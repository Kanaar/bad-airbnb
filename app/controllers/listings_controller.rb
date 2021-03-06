class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :search]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def home; end

  def index
    @search_params = listing_params
    if listing_params[:city].empty?
      @listings = Listing.where.not(latitude: nil, longitude: nil)
      @header = "All listings"
    else
      @listings = Listing.where(city: listing_params[:city]).where.not(latitude: nil, longitude: nil)
      @header = "All listings in #{listing_params[:city]}"
    end

    @markers = @listings.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude,
        infoWindow: { content: render_to_string(partial: "/listings/map_window", locals: { listing: listing }) }
      }
    end
  end

  def my_listings
    @listings = Listing.where(user: current_user).order(updated_at: :desc)
  end

  def show
    @booking = @listing.bookings.new
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id

    if @listing.save
      redirect_to my_listings_path
    else
      redirect_to my_listings_path
    end
  end

  def edit; end

  def update
    @listing.update(listing_params)

    redirect_to listing_path(@listing)
  end

  def destroy
    @listing.destroy
    redirect_to listings_path
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:start_date, :end_date, :description, :headline, :country, :city, :address, :price_daily, :capacity, :image_url)
  end
end

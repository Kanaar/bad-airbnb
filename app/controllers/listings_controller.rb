class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :search ]
  before_action :set_listing, only: [ :show, :edit, :update, :destroy ]

  def home
  end

  def index
    if params[:commit] == 'Search'
      @listings = Listing.where(country: params[:search][:country], city: params[:search][:city])
      @header = "All listings in #{params[:search][:city]}, #{params[:search][:country]}"
    elsif params[:commit] == 'Show all listings'
      @listings = Listing.all
      @header = "All listings"
    else
      @listings = Listing.first(3)
      @header = "First 3 listings"
    end
  end

  def host_index
    @listings = Listing.where(user: current_user)
  end

  def search
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id
    @listing.save!

    if @listing.save
      redirect_to user_listings_path
    else
      render :new
    end
  end

  def edit
  end

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
    params.require(:listing).permit(:description, :headline, :country, :city, :address, :price_daily, :capacity)
  end
end


class ListingsController < ApplicationController
  before_action :set_listing, only: [ :show, :edit, :update, :destroy ]

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

  def search
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.save

    if @listing.save
      redirect_to listings_path
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
    params.require(:listing).permit(:description, :country, :city, :address, :price_daily, :capacity)
  end
end


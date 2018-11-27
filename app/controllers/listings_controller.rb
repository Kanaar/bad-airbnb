class ListingsController < ApplicationController
  def index
    @listings = Listings.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.save!
  end

private

  def listing_params
    params.require(:listing).permit(:description, :country, :city, :address, :price_daily, :capacity)
  end
end


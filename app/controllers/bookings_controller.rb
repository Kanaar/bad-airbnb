class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :edit, :update, :destroy ]
  before_action :set_listing, only: [:create]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = @listing.bookings.new(booking_params)

    days = (@booking.end_date - @booking.start_date).to_i
    @booking.total_cost = days * @booking.listing.price_daily

    @booking.user = current_user
    @booking.save! unless @listing.user = @booking.user

    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :start_date, :end_date, :guest_number )
  end
end

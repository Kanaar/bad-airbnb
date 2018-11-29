class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :user

  validates :start_date, :end_date, :total_cost, presence: true
  validates :guest_number, presence: true, numericality: { greater_than: 0  }

  validate do |booking|
    user_does_not_own_listing(booking)
    validate_capacity(booking)
    # validate_chronology(booking)
  end

  private

  def validate_chronology(booking)
    if booking.end_date < booking.start_date
      errors.add("Starting date has to be after end date")
    end
  end

  def validate_capacity(booking)
    if booking.listing.capacity < booking.guest_number
      errors.add(:guest_number, "The guest number cannot exceed the accomodations' capacity")
    end
  end

  def user_does_not_own_listing(booking)
    booking.listing.user != booking.user
  end
end

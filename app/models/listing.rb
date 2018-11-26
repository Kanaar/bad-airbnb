class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :description presence: true
  validates :country, :city, :address presence: true
  validates :price_daily presence: true, numericality: { greater_than: 0 }
  validates :capacity presence: true, numericality: { greater_than: 0 }
end

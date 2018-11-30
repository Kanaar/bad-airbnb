class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :headline, presence: true
  validates :country, :city, :address, presence: true
  validates :price_daily, presence: true, numericality: { greater_than: 0 }
  validates :capacity, presence: true, numericality: { greater_than: 0 }

  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_address?

  def full_address
    "#{address}, #{city}"
  end
end

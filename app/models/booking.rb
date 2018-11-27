class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :user

  validates :end_after_start
  validates :start_date, :end_date, :total_cost, presence: true
  validates :guest_number, presence: true, numericality: { greater_than: 0 }

private

  def end_after_start
    errors.add(:end_date, "must be after the start date") if :end_date < :start_date
  end
end

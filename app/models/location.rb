class Location < ApplicationRecord
  has_many :reservations

  def within_operating_hours(reservation_date)
    reservation_time = Time.parse(reservation_date.to_s)
    reservation_time.strftime("%H%M%S%N") > opening_time.strftime("%H%M%S%N") &&
    reservation_time.strftime("%H%M%S%N") < closing_time.strftime("%H%M%S%N")
  end
end

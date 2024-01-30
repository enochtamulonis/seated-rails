class Reservation < ApplicationRecord
  belongs_to :location
  belongs_to :customer

  delegate :email, to: :customer, prefix: true
end

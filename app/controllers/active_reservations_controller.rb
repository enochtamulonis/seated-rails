class ActiveReservationsController < ApplicationController
  def index
    @reservations = current_customer.reservations
  end
end
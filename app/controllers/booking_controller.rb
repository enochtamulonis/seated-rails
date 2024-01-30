class BookingController < ApplicationController
  def show
    @locations = Location.all
  end
end
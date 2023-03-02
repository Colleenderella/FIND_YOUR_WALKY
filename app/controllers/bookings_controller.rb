class BookingsController < ApplicationController
  # def show
  #   @booking = Booking.find(params[:id])
  # end

  def new
    @companion = Companion.find(params[:companion_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @companion = Companion.find(params[:companion_id])
    @booking.companion = @companion
    @booking.status = 0

    if @booking.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:location, :date, :time)
  end
end

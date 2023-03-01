class BookingsController < ApplicationController
  # def show
  #   @booking = Booking.find(params[:id])
  # end

  def new
    @companion = Companion.find(params[:companion_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(Booking_params)
    @booking.user = current_user
    @companion = Companion.find(params[:id])
    @booking.companion = @companion
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :location, :date, :time)
  end
end

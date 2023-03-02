class ProfileController < ApplicationController
  def index
    @users = Users.all
  end

  def profile
    @user = current_user
    @companions = @user.companions
    @bookings = @user.bookings
  end

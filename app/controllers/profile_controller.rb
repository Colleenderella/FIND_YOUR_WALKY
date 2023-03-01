class ProfileController < ApplicationController
  def index
    @users = Users.all
  end

  def profile
    @user = current_user
    @companions = @user.companions
  end
end

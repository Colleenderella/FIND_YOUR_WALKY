class CompanionsController < ApplicationController
  before_action :set_companion, only: [:show, :new, :create]

  # def index
  #   @companions = Companion.all
  # end

  def show
  end

  def new
    @companion = Companion.new
  end

  def create
    @companion = Companion.new(companion_params)
    if @companion.save
      redirect_to companion_path(@companion)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  # end

  # def update
  #   @companion.update(companion_params)
  #   redirect_to companion_path(@companion)
  # end

  # def destroy
  #   @companion.destroy
  #   redirect_to companions_path, status: :see_other
  # end

  private

  def set_companion
    @companion = Companion.find(params[:id])
  end

  def companion_params
    params.require(:companion).permit(:name, :type, :offer_details)
  end
end

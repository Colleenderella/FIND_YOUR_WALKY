class PagesController < ApplicationController
  def home
    @companions = Companion.all
  end
end

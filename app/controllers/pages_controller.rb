class PagesController < ApplicationController
  def home
    if params[:query].present?
      sql_query = "name ILIKE :query OR companion_type ILIKE :query"
      @companions = Companion.where(sql_query, query: "%#{params[:query]}%")
    else
      @companions = Companion.all
    end
  end
end

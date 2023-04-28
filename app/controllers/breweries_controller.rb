class BreweriesController < ApplicationController
  def index
    if params[:state]
      @breweries = Brewery.where(state: params[:state])
      render :index
    else
      @breweries = Brewery.all
      render :index
    end
  end
end

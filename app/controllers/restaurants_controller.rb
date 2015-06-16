class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end

  def create
    Restaurant.create(restaurant_params)
    redirect_to '/restaurants'
  end

end

class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurants = Restaurant.new
    Restaurant.create(restaurant_params)
    #redirect
  end

  def create
    #??
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name,:address, :category, :phone_number)
end

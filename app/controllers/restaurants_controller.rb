class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(rest_param)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end


  end

  def rest_param
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

end

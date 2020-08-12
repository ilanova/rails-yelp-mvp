class RestaurantsController < ApplicationController
  def index
  @restaurants = Restaurant.all
  end

  # GET /restaurants/1
  def show
  end

  # GET /restaurants/new
  def new
  @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)
  end

  private

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end
end

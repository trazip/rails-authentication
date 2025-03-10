class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def private
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
  end

  private
  
  def restaurant_params
    params.require(:restaurant).permit(:name, :addres)
  end
end

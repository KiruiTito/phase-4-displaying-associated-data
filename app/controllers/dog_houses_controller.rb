# app/controllers/dog_houses_controller.rb
class DogHousesController < ApplicationController
  def show
    dog_house = DogHouse.find(params[:id])
    render json: dog_house, include: :reviews
  end
end

class Api::V1::ItemsController < ApplicationController

  def show
    @item = Item.find_by(id: params[:id])
    render json: @item
  end

  def index
    @items = Item.all
    render json: @items, status: 200
  end

  def pickOutfit
    high_temp = params["highTemp"]
    low_temp = params["lowTemp"]

    @outfits = []
    @items = Item.all
    #what is temp range
    # temp_range = [low_temp..high_temp]
    #iterate through all temps and turn into integer

    @items.select do |item|
      if item.range.include?(low_temp)
        # byebug
        @outfits << item
      end
    end

    # magic happens: create an array of items that meet the temp qualifications
    # save those items in a variable @items
    #  params = high and low temp
    render json: @outfits
  end

  # private
  #
  # def outfit_params
  #   params.permit(:highTemp, :lowTemp)
  # end

  # def return_clothing
  #
  # end

  #/items/:temp

  # def create
  #   @species = Species.find_or_create_by(name: params[:species])
  #   @animal = Animal.new(name: params[:name], gender: params[:gender], species: @species)
  #
  #   if @animal.save
  #     render json: @animal
  #   else
  #     message = {message: 'That animal could not be saved'}
  #     render json: message, status: :bad_request
  #   end
  # end
end

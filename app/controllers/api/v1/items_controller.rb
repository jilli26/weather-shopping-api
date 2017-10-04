class Api::V1::ItemsController < ApplicationController

  def show
    @item = Item.find_by(id: params[:id])
    render json: @item
  end

  def index
    @items = Item.all
    render json: @items, status: 200
  end

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

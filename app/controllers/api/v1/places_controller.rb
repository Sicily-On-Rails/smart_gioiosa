class Api::V1::PlacesController < ApplicationController
  before_action :set_place, only: [:show, :update, :destroy]  
  
  def index
    @places = Place.all
    render json: PlaceSerializer.new(@places).serializable_hash
  end

  def show
    #options = {include: [:points]}
    render json: PlaceSerializer.new(@place).serializable_hash #, include: [:pois]
  end

  def create 
    @place = Place.new(place_params)
    if @place.save
      render json: @place, status: :created
    else
      render json: {errors: @place.errors}, status: :unprocessable_entity
    end
  end

  def update
    if @place.update(place_params)
      render json: @place, status: :ok
    else
      render json: {errors: @place.errors}, status: :unprocessable_entity
    end
  end

  def destroy 
    if @place.destroy
      head 204 
    end
  end

  private
  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :description)
  end

end

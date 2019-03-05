class Api::V1::PoisController < ApplicationController
  before_action :set_poi, only: [:show, :update, :destroy]
  
  def index
    pois = Poi.all
    render json: PoiSerializer.new(pois).serialized_json
  end
  
  def show
    render json: @poi
  end

  def create
    @poi = Poi.new(poi_params)
    if @poi.save
      render json: @poi, status: :created 
    else
      render json: {errors: @poi.errors}, status: :unprocessable_entity
    end
  end

  def update
    if @poi.update(poi_params)
      render json: @poi, status: :ok 
    else
      render json: {errors: @poi.errors}, status: :unprocessable_entity
    end
  end 

  def destroy
    @poi.destroy
    head 204
  end 

 
  private 
  def set_poi
    @poi = Poi.find(params[:id])
  end
  
  def poi_params
    params.require(:poi).permit(:name, :description, :latitude, :longitude)
  end 
end

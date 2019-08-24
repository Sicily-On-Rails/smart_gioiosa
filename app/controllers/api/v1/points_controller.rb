class Api::V1::PointsController < ApplicationController
  before_action :set_point, only: [:show, :update, :destroy]
  
  def index
    if params[:place_id]
      @place = Place.find(params[:place_id])
      @points = @place.points
      render json: PointSerializer.new(@points).serialized_json
    else
      @points = Point.all
      render json: PointSerializer.new(@points).serialized_json
    end
  end
  
  def show
    render json: PointSerializer.new(@point).serialized_json
  end

  def create
    @point = Poi.new(poi_params)
    if @point.save
      render json: @point, status: :created 
    else
      render json: {errors: @point.errors}, status: :unprocessable_entity
    end
  end

  def update
    if @point.update(poi_params)
      render json: @point, status: :ok 
    else
      render json: {errors: @point.errors}, status: :unprocessable_entity
    end
  end 

  def destroy
    @point.destroy
    head 204
  end 

 
  private 
  def set_point
    @point = Point.find(params[:id])
  end
  
  def poi_params
    params.require(:point).permit(:name, :description, :latitude, :longitude)
  end 
end

class Api::V1::PoisController < ApplicationController
  before_action :set_poi, only: [:show]
  
  def index
    @pois = Poi.all.order(:id)
    render json: @pois
  end
  
  def show
    render json: @poi
  end
 
  private 
  def set_poi
    @poi = Poi.find(params[:id])
  end
 
end

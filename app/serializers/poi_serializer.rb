class PoiSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :latitude, :longitude 
end

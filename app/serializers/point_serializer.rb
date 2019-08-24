class PointSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :place
  cache_options enabled: true, cache_length: 12.hours
  attributes :name, :description, :latitude, :longitude 
end

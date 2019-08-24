class PlaceSerializer
  include FastJsonapi::ObjectSerializer
  has_many :points
  cache_options enabled: true, cache_length: 12.hours
  attributes :name, :description
end

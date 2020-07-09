class Polygon
  include Mongoid::Document
  include Mongoid::Timestamps

  field :uid, :type => String
  field :name, :type => String, :default => ""
  field :geojson, :type => Hash

  index({ name: 1 }, { unique: true, background: true })
end

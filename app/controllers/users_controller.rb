class UsersController < ApplicationController
  # before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: :save_polygon

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def save_polygon
  	data = JSON.parse(params["jeojson"])
  	name = data["properties"]["name"]
  	geojson = data
  	obj = Polygon.find_by(name: name)
  	if obj.nil?
  	  polygon = Polygon.new(name: name, geojson: geojson)
  	  polygon.save!
  	end
  	respond_to do |format|
      format.js { }
    end
  end
end

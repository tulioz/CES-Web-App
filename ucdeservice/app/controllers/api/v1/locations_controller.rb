class Api::V1::LocationsController < ApplicationController
  def index
    if params[:type_id]
      @type = Type.find(params[:type_id])
      @locations = @type.locations
      @title = "Locations: #{@type.name}"
    else
      @locations = Location.all
      @title = "All Locations"
    end
    
    @header = @title
    
    respond_to do |format|
      format.json { render :json => @locations }
    end
  end
  
  def show
    @location = Location.find(params[:id])
    @title = @location.name
    respond_to do |format|
      format.json { render :json => @location }
    end
  end
  
end

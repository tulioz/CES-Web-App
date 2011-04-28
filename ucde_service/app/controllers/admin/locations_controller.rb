class Admin::LocationsController < ApplicationController
    # before_filter :authenticate_admin!
    # GET /locations
    # GET /locations.xml
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
        format.html # index.html.erb
        format.xml  { render :xml => @locations }
        format.json { render :json => @locations }
      end
    end

    # GET /locations/1
    # GET /locations/1.xml
    def show  
      @location = Location.find(params[:id])
      @title = @location.name
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @location }
        format.json { render :json => @location }
      end
    end

    # GET /locations/new
    # GET /locations/new.xml
    def new
      @title = "New Location"
      @location = Location.new

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @location }
      end
    end

    # GET /locations/1/edit
    def edit
      @location = Location.find(params[:id])
      @title = "Editing #{@location.name}"
    end

    # POST /locations
    # POST /locations.xml
    def create
      @location = Location.new(params[:location])

      respond_to do |format|
        if @location.save
          format.html { redirect_to(@location, :notice => 'Location was successfully created.') }
          format.xml  { render :xml => @location, :status => :created, :location => @location }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @location.errors, :status => :unprocessable_entity }
        end
      end
    end

    # PUT /locations/1
    # PUT /locations/1.xml
    def update
      @location = Location.find(params[:id])

      respond_to do |format|
        if @location.update_attributes(params[:location])
          format.html { redirect_to(@location, :notice => 'Location was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @location.errors, :status => :unprocessable_entity }
        end
      end
    end

    # DELETE /locations/1
    # DELETE /locations/1.xml
    def destroy
      @location = Location.find(params[:id])
      @location.destroy

      respond_to do |format|
        format.html { redirect_to(locations_url) }
        format.xml  { head :ok }
      end
    end
  end

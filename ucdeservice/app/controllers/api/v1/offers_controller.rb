class Api::V1::OffersController < ApplicationController
  def index
    @offers = Offer.all
    
    respond_to do |format|
      format.json { render :json => @offers }
    end
  end
    
  def show
    @offers = Offer.find(params[:id])
    
    respond_to do |format|
      format.json { render :json => @offer }
    end
  end
end

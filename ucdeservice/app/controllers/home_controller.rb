class HomeController < ApplicationController
  def index
    @title = "Home"
    respond_to do |format|
      format.html
    end
  end
end

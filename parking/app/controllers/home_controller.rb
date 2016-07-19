class HomeController < ApplicationController
  
  def index
    @places = Place.all
  end

  def login
    render :layout => "login"
  end
end

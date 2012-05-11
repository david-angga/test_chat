class HomeController < ApplicationController

  def index
  end
  
  def listener
    require "juggernaut"
    
    Juggernaut.publish("channel1", params[:message]) unless params[:message].blank?
    render :nothing => true, :status => 200
  end
end

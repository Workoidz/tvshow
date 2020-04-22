class HomeController < ApplicationController
  def show
  	p " in show method: " 

  	@shows = Show.all

  	if params[:search_show] != nil then @shows = Show.where(show_name: params[:search_show]) end #p " Show : " + params[:search_show] end

  	if params[:search_channel] != nil then @shows = Channel.find_by(channel_name: params[:search_channel]).shows  end #p " channel : " + params[:search_channel] end

  end
end

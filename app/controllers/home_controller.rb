class HomeController < ApplicationController
  def show
  	

  	@shows = Show.all

  	if params[:search_show] != nil then @shows = Show.where(show_name: params[:search_show]) end #p " Show : " + params[:search_show] end

  	if params[:search_channel] != nil then @shows = Channel.find_by(channel_name: params[:search_channel]).shows  end #p " channel : " + params[:search_channel] end


  end


  def fav
  	
  	p " in the fav..! "+ params[:show_id]


  	if user_signed_in? then
  		redirect_to root_path
  	else
  		redirect_to new_user_session_path
  	end

  end
  

end

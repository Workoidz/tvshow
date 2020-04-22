class HomeController < ApplicationController
  def show
  	@shows = Show.all
  end
end

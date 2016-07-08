class GamesController < ApplicationController
	 before_action :authenticate_user!
  def index
  	@games=Game.all
  end

  def show
  	@game=Game.find(params[:id])
  end

 # def home
  #	@games=Game.all
  #end
end

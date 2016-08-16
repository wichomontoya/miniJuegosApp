class GamesController < ApplicationController
	 before_action :authenticate_user!, only: [:play]
  def index
  	@games=Game.all
  end

  def show
    @games=Game.all
  	@game=Game.find(params[:id])
  end

  def play
  	
  end

  def score
    @game=Game.find(params[:id])
    @game.rankings.create(user: current_user,score:params[:score])
    pry
    redirect_to '/'
  end
end

class GamesController < ApplicationController
	 before_action :authenticate_user!
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
    @player=@game.rankings.find_by user_id: current_user.id
    @game.rankings.create(user: current_user,score:params[:score])
  end
end

class MainController < ApplicationController

  def home
    @news = Message.all

  end

  def news

    @news = Message.all
    @message = @news.find(params[:id])

  end




  def teams
    @teams = Team.all

  end

  def players
    @players = Player.all
  end

  def team

    @teams = Team.all
    @relacjowany = @teams.find(params[:id])
    @relacje = @relacjowany.players


   end






  def contact
  end






  def about
  end

  def flash1

    flash[:dodano] = "Dodano pomyślnie :D"
    redirect_to(action:'Index')
  end

  def flash2
    flash[:anulowano] = "jak sobie chcesz ;c"
    redirect_to(action:'Index')

  end



end

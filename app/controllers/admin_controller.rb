class AdminController < ApplicationController

  before_action :authenticate_admin!

  def players
    @players = Player.all
  end

  def news
    @news = Message.all
  end

  def tims
    @teams = Team.all
  end

  def usunn
    @wywaln =Message.find(params[:id]).destroy
    @news = Message.all
    render('adminpanel')
  end

  def dodajn

    @nowyn = Message.new

  end

  def utworzn
    @nowyn= Message.new(parametryn)
    if @nowyn.save
      redirect_to(:action => 'flash1' )
    else
      render ('dodajn')
    end
  end


  def parametryn
    params.require(:message).permit(:topic, :content, :avatar, :created_at)
  end


  def adminpanel

  end

  def dodajt
    @nowyt = Team.new

  end

  def utworzt
    @nowyt= Team.new(parametryt)
    if @nowyt.save
      redirect_to(:action => 'flash1' )
    else
      render ('dodajt')
    end
  end

  def usunt
    @wywalt =Team.find(params[:id]).destroy
    @teams = Team.all
    render('adminpanel')
  end


  def parametryt
    params.require(:team).permit(:name, :info, :avatar)
  end


  def dodajp
    @nowyp = Player.new

  end


  def utworzp
    @nowyp = Player.new(parametryp)
    if @nowyp.save
      redirect_to(:action => 'flash1' )
    else
      render ('dodajp')
    end
  end


  def parametryp
    params.require(:player).permit(:name, :surname, :country, :city, :info, :avatar, :age, )
  end


  def usunp
    @wywalp =Player.find(params[:id]).destroy
    @all = Player.all
    render('adminpanel')
  end
  def dodaju
    @nowyu = Userteam.new
  end

  def utworzu
    @nowyu = Userteam.new(parametryu)
    if @nowyu.save
      redirect_to(:action => 'flash1' )
    else
      render ('dodaju')
    end
  end

  def parametryu
    params.require(:userteam).permit(:name, :player_id, :team_id)
  end

  def flash1

    flash[:dodano] = "Dodano pomyślnie :D"
    redirect_to(controller:'main', action:'home')
  end

  def flash2
    flash[:anulowano] = "jak sobie chcesz ;c"
    redirect_to(controller:'main', action:'home')

  end





end

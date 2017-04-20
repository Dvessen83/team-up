class TeamsController < ApplicationController
  before_action :authenticate_user!

  def index
    @teams = Team.all

  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    if current_user.admin == true
      @team = Team.new
    else
      flash[:alert] = "You are unable to perform this action!"
      redirect_to root_path
    end
  end

  def create

    team = params[:team]
    date = Date.new team["date(1i)"].to_i, team["date(2i)"].to_i, team["date(3i)"].to_i
    User.all.each do |user|
      Team.create(date: date, member1: user, member2: available_user(user,date))
    end
    flash[:notice] = "Teams generated for #{date}"
    redirect_to teams_path
  end

  private

  def available_user(member1,date)
    users = User.all
    todays_teams = Team.all.select{ |team| team.date == date }

    available_users = users.reject{ |user|
      user == member1 && todays_teams.each do |t|
        t.member1
      end &&
      todays_teams.each do |t|
        t.member2
      end
    }

    available_users.sample
  end

end

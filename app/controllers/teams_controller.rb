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
      new_team = Team.create(date: date, member1: user, member2: available_user(user,date))
      if new_team.save
        flash[:notice] = "Teams generated for #{date}"
      end

    end
    redirect_to teams_path
  end

  private

  def available_user(member,date)
    users = User.all
    todays_teams = Team.all.select{ |t| t.date == date }

    users = users.reject{ |user| user == member }

      todays_teams.each do |team|
        users = users.reject{|user| user == team.member1}
        users = users.reject{|user| user == team.member2}
      end

    return users.sample
  end

end

class TeamsController < ApplicationController
  before_action :authenticate_user!

  def index
    @teams = Team.all

  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = current_user.teams.build
  end

  def create
  end

end

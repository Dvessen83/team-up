class TeamsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
    @teams = Team.all

  end

  def show
  end

  def new
    @team = current_user.teams.build
  end

  def create
  end

end

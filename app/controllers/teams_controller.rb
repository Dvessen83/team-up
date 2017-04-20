class TeamsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
    @teams = current_user.teams

  end

  def show
  end

  def new
    @team = current_user.teams.build
  end

  def create
  end

end

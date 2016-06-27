class Api::TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new

  end

  def create
    @team = Team.new(
      creature: params[:creature],
      name: params[:name],
      state: params[:state],
      sport: params[:sport]
      )
    if @team.save
      render :show #or "show.json.jbuilder"
    else
      render json: { errors: @team.errors.full_messages }, status: 422
    end
  end

  def update
    @team = Team.find(params[:id])
    @team.update(
      creature: params[:creature],
      name: params[:name],
      state: params[:state],
      sport: params[:sport]
      )
    render :show
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to "/teams" #redirect instead of render
  end
end

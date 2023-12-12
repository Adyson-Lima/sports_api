class Api::V1::SportsController < ApplicationController

  before_action :set_sport, only: %i[show] # show update destroy

  def index
    @sports = Sport.all 
    render json: @sports
  end

  def show
    render json: @sport
  end

  def create
    @sport = Sport.new(sport_params)
    if @sport.save
      render json: @sport, status: :created, location: api_v1_sport_url(@sport)
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

private

def set_sport
  @sport = Sport.find(params[:id])
end

def sport_params
  params.require(:sport).permit(:name, :description)
end

end
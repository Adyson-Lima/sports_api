class Api::V1::SportsController < ApplicationController

  #before_action :set_sport, only: %i[] # show update destroy

  def index
    @sports = Sport.all 
    render json: @sports
  end

private

def set_sport
  @sport = Sport.find(params[:id])
end

def sport_params
  params.require(:sport).permit(:name, :description)
end

end
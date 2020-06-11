class FloorsController < ApplicationController
  def show
    @floor = Floor.find(params[:id])
  end

  def rooms_area
    @floor = Floor.find(params[:id])
    render json: @floor.rooms.pluck(:name, :area).sort_by { |name, area| area.to_i }
  end
end

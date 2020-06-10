class RoomsController < ApplicationController
  def index
    @floor = Floor.find(params[:floor_id])
    @rooms = @floor.rooms
  end

  def show
    @room = Room.find(params[:id])
  end
end

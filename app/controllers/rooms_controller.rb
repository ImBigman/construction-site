class RoomsController < ApplicationController
  def index
    @floor = Floor.find(params[:floor_id])
    @rooms = @floor.rooms
  end

  def show
    @room = Room.find(params[:id])
    # @room.tasks.create!(task_params)
  end

  private

  # def task
  #   @task ||= params[:id] ? Task.find(params[:id]) : Task.new
  # end

  def room
    @room ||= Room.find(params[:room_id])
  end

  # helper_method :task
  helper_method :room

  def task_params
    params.require(:task).permit(:title, :room_id, :price, :work_time, :deadline)
  end
end

class TasksController < ApplicationController
  def create
    room.tasks.create!(task_params)
    # @task.save!
  end

  def update
    task.update(task_params)
  end

  def destroy
    @room = task.room
    task.destroy
  end

  def move
    task.insert_at(params[:position].to_i)
    head :ok
  end

  def finish_task
    task.complete!
  end

  private

  def task
    @task ||= params[:id] ? Task.find(params[:id]) : Task.new
  end

  def room
    @room ||= Room.find(params[:room_id])
  end

  helper_method :task
  helper_method :room

  def task_params
    params.require(:task).permit(:title, :room_id, :price, :work_time, :deadline)
  end
end

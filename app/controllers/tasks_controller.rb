class TasksController < ApplicationController
  def move
    @task = Task.find(params[:id])
    @task.insert_at(params[:position].to_i)
    head :ok
  end
end

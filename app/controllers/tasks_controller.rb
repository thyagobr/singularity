class TasksController < ApplicationController
  def create
    @task = current_user.tasks.create(task_params)
    redirect_to '/'
  end

  def update
    @task = current_user.tasks.find(params[:id])
    Activity.current.update(finished_at: Time.current) if @task.current? && task_params[:current] == "false"
    @task.update(task_params)
    redirect_to '/'
  end

  private

  def task_params
    params.fetch(:task, {}).permit(:text, :current)
  end
end

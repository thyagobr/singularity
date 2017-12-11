class ActivitiesController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    Activity.create(task: @task)
    @task.update(current: true)
    redirect_to '/'
  end
end

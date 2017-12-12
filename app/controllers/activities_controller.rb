class ActivitiesController < ApplicationController
  def create
    @task = current_user.tasks.find(params[:task_id])
    current_user.activities.create(task: @task)
    @task.update(current: true)
    redirect_to '/'
  end
end

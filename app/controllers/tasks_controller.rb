class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks.includes(:activities)
      .order('activities.created_at desc')

    if params["yesterday"] == "true"
        @tasks = @tasks.where('activities.created_at between ? and ?', Date.yesterday.midnight, Date.today - 1.second)
    end

    @task = current_user.tasks.build
    @current_task = current_user.activities.find_by(finished_at: nil)&.task

    @tasks -= [@current_task] if @current_task
  end

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = current_user.tasks.create(task_params)
    redirect_to tasks_path
  end

  def update
    @task = current_user.tasks.find(params[:id])
    @task.update(task_params)
    redirect_to '/'
  end

  private

  def task_params
    params.fetch(:task, {}).permit(:text, :status)
  end
end

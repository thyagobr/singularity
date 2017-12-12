class DashboardController < ApplicationController
  def index
    @task = current_user.tasks.build
    @current_task = current_user.activities.find_by(finished_at: nil)&.task
    @tasks = current_user.tasks.includes(:activities).order('activities.created_at desc') - [@current_task].compact
  end
end

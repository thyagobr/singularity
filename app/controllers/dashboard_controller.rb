class DashboardController < ApplicationController
  def index
    @task = Task.new
    @current_task = Activity.find_by(finished_at: nil)&.task
    @tasks = Task.all - [@current_task].compact
  end
end

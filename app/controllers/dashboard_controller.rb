class DashboardController < ApplicationController
  def main
    @tasks_todo = current_user.tasks.where(status: "todo")
    @current_task = current_user.tasks.find_by(status: "current")
    @tasks_done = current_user.tasks.where(status: "done")
    render :main, status: 200
  end
end

class DashboardController < ApplicationController
  def main
    @current_task = current_user.tasks.find_by(status: "current")
    @tasks_todo = current_user.tasks.where(status: "todo")
    render :main, status: 200
  end
end

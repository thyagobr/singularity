class RaidsController < ApplicationController
  def composing
    @tasks = current_user.tasks.where(status: 'frozen')
  end

  def select_task
    puts "ADDDING: ---------> #{params[:task_id]}"
    redirect_to raids_path
  end

  def strategy
    @tasks = current_user.tasks.where(status: 'composed')
  end
end

class RaidsController < ApplicationController
  def composing
    @tasks = current_user.tasks.where(status: 'frozen')
  end
end

class User < ApplicationRecord
  has_many :tasks
  has_many :activities

  def current_task
    tasks.find_by(current: true)
  end

  def current_activity
    Activity.find_by(task: current_task, finished_at: nil)
  end

  has_secure_password

  def admin?
    raise StandardError.new("No company attached to user") unless company_id.present?
    role == "admin"
  end
end

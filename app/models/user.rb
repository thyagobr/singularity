class User < ApplicationRecord
  has_many :tasks
  has_many :activities

  has_secure_password

  def admin?
    raise StandardError.new("No company attached to user") unless company_id.present?
    role == "admin"
  end
end

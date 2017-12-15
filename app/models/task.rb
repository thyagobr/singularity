class Task < ApplicationRecord
  has_many :activities
  belongs_to :user

  before_validation :check_state

  validates :text, presence: true

  STATUS = ['todo', 'current', 'done']

  private

  def check_state
    if status_was == 'current'
      activities.find_by(finished_at: nil).update(finished_at: Time.current)
    else
      true
    end
  end
end

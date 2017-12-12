class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :task

  before_create :set_started_at_time

  scope :current, -> { Activity.find_by(task: Task.current, finished_at: nil) }

  private

  def set_started_at_time
    self.started_at ||= Time.current
  end
end

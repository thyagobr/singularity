class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :task

  before_create :set_started_at_time

  scope :yesterday, -> { where('started_at between ? and ?', Date.yesterday.midnight, Date.today.midnight - 1.minute) }

  private

  def set_started_at_time
    self.started_at ||= Time.current
  end
end

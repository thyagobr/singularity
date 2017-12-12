class Task < ApplicationRecord
  has_many :activities
  belongs_to :user

  scope :current, -> { find_by(current: true) }

  validates :text, presence: true
end

class Task < ApplicationRecord
  has_many :activities

  scope :current, -> { find_by(current: true) }

  validates :text, presence: true
end

class Task < ApplicationRecord
  has_many :activities
  belongs_to :user

  validates :text, presence: true
end

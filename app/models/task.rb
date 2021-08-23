class Task < ApplicationRecord
  belongs_to :user
  validates :priority, presence: true
  validates :content, presence: true
end

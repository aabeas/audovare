class Request < ApplicationRecord
  belongs_to :user
  # has_many :recordings
  validates :title, presence: true,
              length: { maximum: 50 }
  validates :synopsis, presence: true
end

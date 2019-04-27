class Guest < ApplicationRecord
  validates :uuid, :url, :timestamp, presence: true
end

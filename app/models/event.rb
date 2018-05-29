class Event < ApplicationRecord
  belongs_to :user
  has_many :notifications
  
  validates :name, presence: true
end

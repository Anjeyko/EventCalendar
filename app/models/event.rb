class Event < ApplicationRecord
  belongs_to :user
  has_many :notifications, dependent: :destroy
  
  validates :name, presence: true
end

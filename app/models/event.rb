class Event < ApplicationRecord
  belongs_to :user
  has_many :notifications, dependent: :destroy
  
  validates_presence_of :name, :start_time
end

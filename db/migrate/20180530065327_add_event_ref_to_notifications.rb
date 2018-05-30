class AddEventRefToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_reference :notifications, :event, foreign_key: true
  end
end

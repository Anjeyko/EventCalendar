class AddEventIdToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :event_id, :integer
  end
end

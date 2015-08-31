class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
    	t.integer :user_notified
    	t.string :message
    	t.string :link
    	t.boolean :read
    	t.boolean :created_by_admin, default: false

      t.timestamps null: false
    end
  end
end

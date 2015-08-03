class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
    	t.integer :project_id
    	t.integer :partnership_id

      t.timestamps null: false
    end
  end
end

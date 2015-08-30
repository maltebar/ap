class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
    	t.text :content
    	t.boolean :complete
    	t.integer :user_id
    	t.integer :project_id

      t.timestamps null: false
    end
  end
end

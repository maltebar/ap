class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
    	t.text :content
    	t.boolean :complete

      t.timestamps null: false
    end
  end
end

class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
    	t.text :content

      t.timestamps null: false
    end
  end
end

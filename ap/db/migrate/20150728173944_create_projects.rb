class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :title
    	t.text :technical_description
    	t.string :git_link

      t.timestamps null: false
    end
  end
end

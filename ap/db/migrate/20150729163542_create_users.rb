class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :nickname
    	t.boolean :admin, default: false
    	t.boolean :optout, default: false

      t.timestamps null: false
    end
  end
end

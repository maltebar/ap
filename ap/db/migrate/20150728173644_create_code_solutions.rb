class CreateCodeSolutions < ActiveRecord::Migration
  def change
    create_table :code_solutions do |t|
    	t.text :content
    	t.integer :user_id
    	t.integer :code_case_id

      t.timestamps null: false
    end
  end
end

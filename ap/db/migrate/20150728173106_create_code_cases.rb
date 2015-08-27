class CreateCodeCases < ActiveRecord::Migration
  def change
    create_table :code_cases do |t|
    	t.text :description 
    	t.string :title
    	t.boolean :listed
      	t.date :date_assigned

      t.timestamps null: false
    end
  end
end

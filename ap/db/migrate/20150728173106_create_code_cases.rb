class CreateCodeCases < ActiveRecord::Migration
  def change
    create_table :code_cases do |t|
    	t.text :description 
    	t.string :title

      t.timestamps null: false
    end
  end
end

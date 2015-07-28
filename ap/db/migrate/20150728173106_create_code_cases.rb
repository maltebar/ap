class CreateCodeCases < ActiveRecord::Migration
  def change
    create_table :code_cases do |t|
    	t.text :description 

      t.timestamps null: false
    end
  end
end

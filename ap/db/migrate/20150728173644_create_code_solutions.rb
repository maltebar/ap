class CreateCodeSolutions < ActiveRecord::Migration
  def change
    create_table :code_solutions do |t|
    	t.text :content

      t.timestamps null: false
    end
  end
end

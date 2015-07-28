class CreateDesignCases < ActiveRecord::Migration
  def change
    create_table :design_cases do |t|
    	t.string :title, default: ""
    	t.text :description
    	t.text :design_problem
    	t.text :questions
    	t.text :solution_1
    	t.text :solution_2
    	t.text :solution_3
    	

      t.timestamps null: false
    end
  end
end

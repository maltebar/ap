class CreateDesignSolutions < ActiveRecord::Migration
  def change
    create_table :design_solutions do |t|
        t.integer :design_case_id
        t.integer :user_id
    	t.text :one_pro_1
    	t.text :one_pro_2
    	t.text :one_pro_3
    	t.text :one_con_1
    	t.text :one_con_2
    	t.text :one_con_3
    	t.text :two_pro_1
    	t.text :two_pro_2
    	t.text :two_pro_3
    	t.text :two_con_1
    	t.text :two_con_2
    	t.text :two_con_3
    	t.text :three_pro_1
    	t.text :three_pro_2
    	t.text :three_pro_3
    	t.text :three_con_1
    	t.text :three_con_2
    	t.text :three_con_3
    	t.integer :solution_1_rank_1
    	t.integer :solution_2_rank_1
    	t.integer :solution_3_rank_1
    	t.text :my_solution
    	t.integer :solution_1_rank_2
    	t.integer :solution_2_rank_2
    	t.integer :solution_3_rank_2
    	t.integer :my_solution_rank
      t.timestamps null: false
    end
  end
end

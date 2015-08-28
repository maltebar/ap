class CreateCodeSolutionAttachments < ActiveRecord::Migration
  def change
    create_table :code_solution_attachments do |t|
    	t.integer :code_solution_id
    	t.string :title
      t.timestamps null: false
    end
  end
end

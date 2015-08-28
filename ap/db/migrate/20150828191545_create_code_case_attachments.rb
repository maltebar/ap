class CreateCodeCaseAttachments < ActiveRecord::Migration
  def change
    create_table :code_case_attachments do |t|
    	t.integer :code_case_id
    	t.integer :title
      t.timestamps null: false
    end
  end
end

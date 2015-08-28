class AddAttachmentRecordToCodeSolutionAttachments < ActiveRecord::Migration
  def self.up
    change_table :code_solution_attachments do |t|
      t.attachment :record
    end
  end

  def self.down
    remove_attachment :code_solution_attachments, :record
  end
end

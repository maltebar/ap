class AddAttachmentRecordToCodeCaseAttachments < ActiveRecord::Migration
  def self.up
    change_table :code_case_attachments do |t|
      t.attachment :record
    end
  end

  def self.down
    remove_attachment :code_case_attachments, :record
  end
end

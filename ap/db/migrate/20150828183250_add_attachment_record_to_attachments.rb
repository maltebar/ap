class AddAttachmentRecordToAttachments < ActiveRecord::Migration
  def self.up
    change_table :attachments do |t|
    	t.string :title
      t.attachment :record
    end
  end

  def self.down
    remove_attachment :attachments, :record
  end
end

class AddAttachmentRecordToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :record
    end
  end

  def self.down
    remove_attachment :projects, :record
  end
end

class AddAttachmentAvatarToBars < ActiveRecord::Migration
  def self.up
    change_table :bars do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :bars, :avatar
  end
end

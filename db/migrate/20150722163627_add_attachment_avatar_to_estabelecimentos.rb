class AddAttachmentAvatarToEstabelecimentos < ActiveRecord::Migration
  def self.up
    change_table :estabelecimentos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :estabelecimentos, :avatar
  end
end

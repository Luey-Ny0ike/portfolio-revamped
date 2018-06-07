class AddAttachmentAvatarToSkills < ActiveRecord::Migration[5.1]
  def self.up
    change_table :skills do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :skills, :avatar
  end
end

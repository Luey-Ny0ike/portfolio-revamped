class AddAttachmentBlogPhotoToBlogs < ActiveRecord::Migration[5.1]
  def self.up
    change_table :blogs do |t|
      t.attachment :blog_photo
    end
  end

  def self.down
    remove_attachment :blogs, :blog_photo
  end
end

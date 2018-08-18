class AddBlogCategoryToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :blog_category_id, :integer
  end
end

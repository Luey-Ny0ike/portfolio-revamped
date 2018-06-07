class AddCategoryIdToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :category_id, :integer
  end
end

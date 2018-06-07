class AddRatingToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :rating, :integer
  end
end

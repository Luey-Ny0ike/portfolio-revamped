class AddProgressToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :progress, :string
    add_column :skills, :color, :string
  end
end

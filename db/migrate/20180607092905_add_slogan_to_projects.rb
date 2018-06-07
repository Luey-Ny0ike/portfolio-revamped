class AddSloganToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :slogan, :string
  end
end

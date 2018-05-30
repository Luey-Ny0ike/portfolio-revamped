class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :challenge
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end

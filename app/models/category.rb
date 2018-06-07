class Category < ApplicationRecord
  has_many :projects
  has_many :skills

  def name_with_state
  "#{name}"
  end
end

class BlogCategory < ApplicationRecord
  has_many :blogs

  def name_with_state
  "#{name}"
  end
end

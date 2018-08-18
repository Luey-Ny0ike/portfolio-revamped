class Blog < ApplicationRecord
  belongs_to :blog_category
  has_attached_file :blog_photo, styles: { background: "1920x1116>",large: "700x700>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 validates_attachment_content_type :blog_photo, content_type: /\Aimage\/.*\z/
end

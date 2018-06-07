class Project < ApplicationRecord
  belongs_to :category
  has_attached_file :cover_photo, styles: { background: "1200x800>", large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
 validates_attachment_content_type :cover_photo, content_type: /\Aimage\/.*\z/

 def next
   Project.where("id > ?", id).first
 end

 def prev
   Project.where("id < ?", id).last
 end
end

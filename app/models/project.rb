class Project < ApplicationRecord
  has_attached_file :cover_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
 validates_attachment_content_type :cover_photo, content_type: /\Aimage\/.*\z/
end

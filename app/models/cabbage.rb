class Cabbage < ActiveRecord::Base
  has_attached_file :image, styles: {med: "100x100", large: "200x200" }, default_url: "/images/:style/missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
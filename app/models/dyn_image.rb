class DynImage < ApplicationRecord
  validates :name, :alttext, :caption, :image, :pagename, presence: true
  has_attached_file :image, :styles => { :large => "60x60%>", :medium => "40x40%>", :thumb => "150x150#" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end

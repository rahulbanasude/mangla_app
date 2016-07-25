class Gallery < ActiveRecord::Base
 has_attached_file :image, styles: { medium: "300x300>", thumb: "200x200>" }
 validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
 belongs_to :category
 accepts_nested_attributes_for :category
end

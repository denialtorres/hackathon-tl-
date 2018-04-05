class Identity < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "500x500", thumb: "300x300" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end

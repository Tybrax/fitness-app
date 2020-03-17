class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  has_attached_file :photo, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end

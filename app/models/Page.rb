class Page < ActiveRecord::Base
  belongs_to :books

  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: '/images/:style/image_placeholder.jpg'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :image, attachment_presence: true
  validates_with AttachmentPresenceValidator, attributes: :image
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes

  delegate :user, :to => :books, :allow_nil => true
end

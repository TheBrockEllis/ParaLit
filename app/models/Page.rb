class Page < ActiveRecord::Base
  include RankedModel
  ranks :row_order, :with_same => :book_id

  belongs_to :books

  has_attached_file :image,
                    styles: { medium: '300x300>', thumb: '100x100>' },
                    default_url: '/images/:style/image_placeholder.jpg',
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :image, attachment_presence: true
  validates_with AttachmentPresenceValidator, attributes: :image
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes

  delegate :user, :to => :books, :allow_nil => true

  def s3_credentials
    {:bucket => ENV['aws_bucket_name'], :access_key_id => ENV['aws_access_key_id'], :secret_access_key => ENV['aws_secret_access_key']}
  end

end

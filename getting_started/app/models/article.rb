class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true, 
		                length: { minimum: 5 }
  validates :date_published, presence: { message: "format is YYYY-MM-DD" }



  validates :image_,
    attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
    attachment_size: { less_than: 5.megabytes }

  has_attached_file :image_, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
end

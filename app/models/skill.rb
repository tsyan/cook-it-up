class Skill < ActiveRecord::Base
  has_many :practices
  has_many :recipes, through: :practices

  has_attached_file :photo, styles: {
      # thumb: '100x100>',
      # square: '200x200#',
      # medium: '300x300>',
      block: '1000x300>' # width by height
    }

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def photo_url
    self.photo.url(:block)
  end
end

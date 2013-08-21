class Photo < ActiveRecord::Base
  attr_accessible :image
  mount_uploader :image, ImageUploader
  before_create :default_name

  def default_name
    self.file_name ||= File.basename(image.filename, '.*').titleize if image
  end
end

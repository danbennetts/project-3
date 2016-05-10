class ImageUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  version :display do
    process :eager => true
    process :resize_to_fill => [300, 300, :north]
  end

  version :thumbnail do
    process :eager => true
    process :resize_to_fit => [100, 100]
  end

end

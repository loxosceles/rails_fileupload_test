require "image_processing/mini_magick"

class ImageUploader < Shrine
  include ImageProcessing::MiniMagick

  plugin :versions, names: [:original, :thumb]
	plugin :store_dimensions
  plugin :delete_raw
	plugin :processing

  process(:store) do |io, context|
    original = io.download

    size_800 = resize_to_limit!(original, 800, 800)
    size_200 = resize_to_limit(size_800,  200, 200)

    {original: size_800, thumb: size_200}
  end

end

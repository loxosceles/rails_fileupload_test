class Photo < ApplicationRecord

  include ImageUploader[:image]
  belongs_to :album
end

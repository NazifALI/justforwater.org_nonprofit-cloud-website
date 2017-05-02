require 'file_size_validator'
class ApplicationSponsor < ApplicationRecord
  attr_accessor :icon

  mount_uploader :icon, IconUploader
  validates :icon,
    :presence => true,
    :file_size => {
      :maximum => 0.5.megabytes.to_i
    }
end

class ApplicationSponsor < ApplicationRecord
  attr_accessor :icon

  mount_uploader :icon, IconUploader
end

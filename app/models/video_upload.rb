class VideoUpload < ApplicationRecord
	has_many :comments, dependent: :destroy
end

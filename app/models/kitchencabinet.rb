require 'elasticsearch/model'

class Kitchencabinet < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :previewo, PreviewoUploader
	mount_uploader :previewt, PreviewtUploader
	mount_uploader :previewth, PreviewthUploader
	validates :description, presence: true, length: { maximum: 600 }
	include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
	
end
Kitchencabinet.import force: true


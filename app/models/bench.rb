require 'elasticsearch/model'

class Bench < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :previewo, PreviewoUploader
	mount_uploader :previewt, PreviewtUploader
	mount_uploader :previewth, PreviewthUploader
	validates :description, presence: true, length: { maximum: 600 }
	include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end
Bench.import(force: true)

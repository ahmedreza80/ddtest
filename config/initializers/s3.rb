require 'carrierwave/orm/activerecord'
require 'fog'

CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAJJTIL2PFVMB263NQ",
      :aws_secret_access_key  => "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",
      :region                 => 'us-east-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "dennydots"
end
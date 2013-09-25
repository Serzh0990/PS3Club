CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIUKYFSMSHJDCZP4Q',                        # required
    :aws_secret_access_key  => '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',                     # required
    :region                 => 'Singapore',                  # optional, defaults to 'us-east-1'
  
  }
  config.fog_directory  = 'images'                             # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['AKIAIUKYFSMSHJDCZP4Q'],                        # required
    :aws_secret_access_key  => ENV['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'],                        # required
    #:region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
    #:host                   => 's3.example.com',             # optional, defaults to nil
    #:endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  
  if Rails.env.test? || Rails.env.cucumber?
    config.storage = :file
    config.enable_processing = false
    config.root = "#{Rails.root}/tmp"
  else
    config.storage = :fog
  end
  config.cache_dir = "#{Rails.root}/tmp/ps3club"
  config.fog_directory  = ENV['images']                    # required
  config.fog_public = false                            # optional, defaults to true
 # config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
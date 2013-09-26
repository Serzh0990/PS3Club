
CarrierWave.configure do |config|
      config.s3_access_key_id = "AKIAIUKYFSMSHJDCZP4Q"
      config.s3_secret_access_key = "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"
      config.s3_bucket = "ps3club"
      config.s3_access = :public
    end
    
    CarrierWave.configure do |config|
      config.fog_credentials = {
        :provider               => 'AWS',       # required
        :aws_access_key_id      => 'AKIAIUKYFSMSHJDCZP4Q',       # required
        :aws_secret_access_key  => '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',       # required
        #:region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
      }
      config.fog_directory  = 'images'                     # required
      #config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
      #config.fog_public     = false                                   # optional, defaults to true
      #config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
    end
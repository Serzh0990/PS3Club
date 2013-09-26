
    CarrierWave.configure do |config| 
      config.fog_credentials = { 
         :provider               => 'AWS', 
         :aws_access_key_id      => 'AKIAIUKYFSMSHJDCZP4Q', 
         :aws_secret_access_key  => '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',
       } 
      config.fog_directory  = 'serzh0990-ps3' 
      config.fog_public     = true
    end  
    
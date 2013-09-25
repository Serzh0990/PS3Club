CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: 'AKIAIUKYFSMSHJDCZP4Q',
        aws_secret_access_key: '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'
    }

    config.fog_directory  = 'images'
    config.fog_public     = false
end
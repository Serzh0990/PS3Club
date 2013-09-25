CarrierWave.configure do |config|
  if Rails.env.production?
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'

    config.storage = :s3
    config.s3_access_key_id = ENV['AKIAIUKYFSMSHJDCZP4Q']
    config.s3_secret_access_key = ENV['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']
    config.s3_bucket = ENV['images']
  else
    config.storage = :file
  end
end
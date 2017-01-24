REDIS_CONFIG = { url: ENV.fetch('sidekiq_redis_url') }

Sidekiq.configure_server do |config|
  config.redis = REDIS_CONFIG
end

Sidekiq.configure_client do |config|
  config.redis = REDIS_CONFIG
end

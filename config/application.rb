require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsZero
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    %w(app lib).each do |path|
      config.autoload_paths << Rails.root.join(path)
    end

    config.active_job.queue_adapter = :sidekiq

    # Vagrant-specific whitelisted IPs
    if config.respond_to? :web_console
      config.web_console.whitelisted_ips += ['10.0.2.2', '192.168.99.1']
    end

    STARTTLS_AUTO = (ENV['smtp_enable_starttls_auto'].to_s.downcase == 'true')

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.perform_deliveries = true
    config.action_mailer.smtp_settings = {
      user_name:            ENV['smtp_user_name'],
      password:             ENV['smtp_password'],
      address:              ENV['smtp_address'],
      domain:               ENV['smtp_domain'],
      authentication:       ENV['smtp_authentication'],
      port:                 ENV['smtp_port'],
      enable_starttls_auto: STARTTLS_AUTO
    }

    config.action_mailer.default_url_options = {
      host: ENV['action_mailer_url_host'],
      port: ENV['action_mailer_url_port']
    }

    config.generators do |g|
      g.test_framework :minitest, spec: false, fixture: false
      g.helper       false
      g.decorator    false
      g.assets       false
      g.stylesheets  false
      g.javascripts  false
      g.view_specs   false
      g.helper_specs false
      g.skip_routes  true
    end

    config.lograge.enabled = true
    config.lograge.custom_options = lambda do |event|
      params = event.payload[:params].except('controller', 'action')
      { params: params } unless params.empty?
    end

    config.action_view.embed_authenticity_token_in_remote_forms = true
  end
end

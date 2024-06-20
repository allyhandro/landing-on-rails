# frozen_string_literal: true

require 'active_support/core_ext/integer/time'

Rails.application.configure do
  # Ally added....for reasons.
  # config default logger
  Rails.logger = Logger.new($stdout)
  Rails.logger.level = Logger::DEBUG
  config.logger = ActiveSupport::Logger.new("log/#{Rails.env}.log")
  config.sass.preferred_syntax = :sass
  config.sass.syntax = :sass
  # ===== end ally added.
  # Settings specified here will take precedence over those in config/application.rb.
  # In the development environment your application's code is reloaded any time
  # it changes. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.enable_reloading = true
  # Do not eager load code on boot.
  config.eager_load = false
  # Show full error reports.
  config.consider_all_requests_local = true
  # Enable server timing
  config.server_timing = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  # ActionMailer Configs ======================================
  config.action_mailer.default = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_caching = false
  config.action_mailer.default charset: 'utf-8'
  config.action_mailer.perform_deliveries = true
  config.action_mailer.default_url_options = { host: 'localhost:3000' }
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  config.action_controller.per_form_csrf_tokens = true
  # hmm how to config for prod?
  # smtp_settings for prod should be via mailchimp as we need a valid app smtp? how to keep this secret...
  config.action_mailer.smtp_settings = {
    address: 'smtp.gmail.com',
    port: 587,
    domain: 'smtp.gmail.com',
    authentication: 'plain',
    enable_starttls_auto: true,
    user_name: 'ally.w.han@gmail.com',
    password: 'gjpe qplk qcyb muqk',
    openssl_verify_mode: 'none'
  }

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise exceptions for disallowed deprecations.
  config.active_support.disallowed_deprecation = :raise

  # Tell Active Support which deprecation messages to disallow.
  config.active_support.disallowed_deprecation_warnings = []

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true
  # Raise error when a before_action's only/except options reference missing actions
  config.action_controller.raise_on_missing_callback_actions = true
end

require 'bundler/setup'
require 'hanami/setup'

require_relative '../lib/evenr'
require_relative '../apps/web/application'

Hanami.configure do
  mount Web::Application, at: '/'

  environment :development do
    logger level: :debug
  end

  environment :production do
    logger level: :info, formatter: :json
  end
end

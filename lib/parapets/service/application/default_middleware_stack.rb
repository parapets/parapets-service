module Parapets
  module Service
    module Application
      class DefaultMiddlewareStack < Rails::Application::DefaultMiddlewareStack
        def build_stack
          ActionDispatch::MiddlewareStack.new.tap do |middleware|
            if rack_cache = load_rack_cache
              require "action_dispatch/http/rack_cache"
              middleware.use ::Rack::Cache, rack_cache
            end

            if config.force_ssl
              middleware.use ::ActionDispatch::SSL, config.ssl_options
            end

            middleware.use ::Rack::Lock unless allow_concurrency?
            middleware.use ::Rack::Runtime
            middleware.use ::ActionDispatch::RequestId

            # Must come after Rack::MethodOverride to properly log overridden methods
            middleware.use ::Rails::Rack::Logger, config.log_tags
            # middleware.use ::ActionDispatch::ShowExceptions, show_exceptions_app
            # middleware.use ::ActionDispatch::DebugExceptions, app
            middleware.use ::ActionDispatch::RemoteIp, config.action_dispatch.ip_spoofing_check, config.action_dispatch.trusted_proxies

            unless config.cache_classes
              middleware.use ::ActionDispatch::Reloader, lambda { reload_dependencies? }
            end

            middleware.use ::ActionDispatch::Callbacks

            # middleware.use ::ActionDispatch::ParamsParser
            middleware.use ::Rack::Head
            middleware.use ::Rack::ConditionalGet
            middleware.use ::Rack::ETag, "no-cache"
          end
        end
      end
    end
  end
end

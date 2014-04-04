require 'rails/version'
require 'rails/application'
require 'parapets/service/routing'
require 'parapets/service/application/default_middleware_stack'

module Parapets
  module Service
    # We can't subclass Rails::Application without setting Rails.application
    Application = Rails::Application

    # The idea is to mimic a Rails app and this is the fastest way.
    # Might change it in the future
    class Application
      def default_middleware_stack
        Parapets::Service::DefaultMiddlewareStack.new(self, config, paths).build_stack
      end

      def routes
        @routes ||= Parapets::Service::Routing::RouteSet.new
        @routes.append(&Proc.new) if block_given?
        @routes
      end

    end

    class << self
      delegate :application, :root, :env, to: Rails
    end
  end
end

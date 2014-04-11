require 'rails/version'
require 'rails/application'
require 'parapets/service/routing'
require 'parapets/service/application/default_middleware_stack'

module Parapets
  module Service
    module Application
      protected
        def default_middleware_stack_builder_class
          Parapets::Service::Application::DefaultMiddlewareStack
        end
    end

    class << self

      def Application(&block)
        Parapets::Railties.Application do
          include Parapets::Service::Application

          instance_eval(&block)
        end
      end

    end

  end
end

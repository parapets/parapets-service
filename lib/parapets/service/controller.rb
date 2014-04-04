require 'parapets/service/versionable'
require 'parapets/service/controller_version'

module Parapets
  module Service
    class Controller
      ACTION = :perform

      include Parapets::Service::Versionable

      private
        # Build a Controller class for the given version
        def self.build_version(version_id,options,&block)
          superclass = options.fetch(:extend){ Parapets::Service::ControllerVersion }
          includes = Array(options[:includes])

          klass = Class.new(superclass)

          includes.each do |include|
            klass.send :include, include
          end

          klass.send :define_method, ACTION, &block

          klass
        end

      class << self
        # Hack to get this class to return a Rack endpoint to the Rails router
        def action(*args)
          self
        end

        # Dispatch the Rack request to the actual controller
        def call(env)
          request = Parapets::Service::Request.new(env)

          version(request.version).action(:call, Parapets::Service::Request).call(env)
        end
      end
    end
  end
end

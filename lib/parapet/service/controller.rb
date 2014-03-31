module Parapet
  module Service
    class Controller
      include Parapet::Service::Versionable

      private
        # Build a Controller class for the given version
        def build_version(version_id,options,&block)
          superclass = options.fetch(:extend){ Parapet::Service::ControllerVersion }
          includes = Array(options[:includes])

          klass = Class.new(superclass)

          includes.each do |include|
            klass.send :include, include
          end

          klass.send :define_method, :call, &block

          klass
        end

      class << self
        # Hack to get this class to return a Rack endpoint to the Rails router
        def action(*args)
          self
        end

        # Dispatch the Rack request to the actual controller
        def call(env)
          request = Parapet::Service::Request.new(env)

          version(request.version).action(:call, Parapet::Service::Request).call(env)
        end
      end
    end
  end
end

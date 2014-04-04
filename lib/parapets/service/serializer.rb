module Parapets
  module Service
    class Serializer
      include Parapets::Service::Versionable

      private
        # Build a Controller class for the given version
        def self.build_version(version_id,options,&block)
          superclass = options.fetch(:extend){ Parapets::Service::SerializerVersion }

          klass = Class.new(superclass, &block)

          klass
        end
    end
  end
end

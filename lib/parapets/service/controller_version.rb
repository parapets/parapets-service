require 'action_controller'

module Parapets
  module Service
    class ControllerVersion < ActionController::Metal
      abstract!

      include ActionController::UrlFor
      include ActionController::Redirecting
      include ActionController::ConditionalGet
      include ActionController::DataStreaming
      include ActionController::StrongParameters

    end
  end
end

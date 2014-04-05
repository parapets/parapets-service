require 'spec_helper'

describe Parapets::Service::Controller do
  let(:controller){ Class.new(Parapets::Service::Controller) }

  describe "versioning" do
    it "versions by creating subclasses of Parapets::Service::ControllerVersion" do
      controller.version(123){}

      expect(controller.version(123).superclass).to be_equal(Parapets::Service::ControllerVersion)
    end

    it "can change the controller subclass" do
      some_class = Class.new
      controller.version(123, extend: some_class){}

      expect(controller.version(123).superclass).to be_equal(some_class)
      expect(controller.version(123).superclass).not_to be_equal(Parapets::Service::ControllerVersion)
    end

    it "defines the #perform instance method on the class" do
      controller.version(123){}

      expect(controller.version(123)).to be_method_defined(:perform)
    end
  end
end

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require "parapets/service"

Dir[File.expand_path("../support/*.rb", __FILE__)].each { |f| require f }

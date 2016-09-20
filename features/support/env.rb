require 'watir-webdriver'
require 'pry'
require 'yaml'

require_relative 'pages/generic.rb'

Dir["#{Dir.pwd}/features/support/pages/*.rb"].each {|f| require f}

TESTDATA = YAML.load_file("features/support/data/test_data.yml")["test_data"]

# binding.pry

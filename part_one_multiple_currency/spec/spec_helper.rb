require 'rspec'

RSpec.configure do |config|
  Dir["#{File.join(File.dirname(__FILE__), '../src/**/*.rb')}"].sort.each { |f|
    require f
  }
end

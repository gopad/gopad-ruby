=begin
#Gopad OpenAPI

#API definition for Gopad

The version of the OpenAPI document: 1.0.0-alpha1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'

describe Gopad::Configuration do
  let(:config) { Gopad::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("http://try.gopad.tech/api/v1")
    # Gopad.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("http://try.gopad.tech/api/v1")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("http://try.gopad.tech/api/v1")
      end
    end
  end
end
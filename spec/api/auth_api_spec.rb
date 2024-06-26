# #Gopad OpenAPI
#
# API definition for Gopad, Etherpad for markdown with go
#
# The version of the OpenAPI document: 1.0.0-alpha1
# Contact: gopad@webhippie.de
# Generated by: https://openapi-generator.tech
# Generator version: 7.6.0
#

require 'spec_helper'
require 'json'

# Unit tests for Gopad::AuthApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AuthApi' do
  before do
    # run before each test
    @api_instance = Gopad::AuthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthApi' do
    it 'should create an instance of AuthApi' do
      expect(@api_instance).to be_instance_of(Gopad::AuthApi)
    end
  end

  # unit tests for external_callback
  # Callback for external authentication
  # @param provider An identifier for the auth provider
  # @param [Hash] opts the optional parameters
  # @option opts [String] :state Auth state
  # @option opts [String] :code Auth code
  # @return [Notification]
  describe 'external_callback test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for external_initialize
  # Initialize the external authentication
  # @param provider An identifier for the auth provider
  # @param [Hash] opts the optional parameters
  # @option opts [String] :state Auth state
  # @return [Notification]
  describe 'external_initialize test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end
end

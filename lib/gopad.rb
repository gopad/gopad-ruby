# Gopad OpenAPI
#
# API definition for Gopad, Etherpad for markdown with go
#
# The version of the OpenAPI document: 1.0.0-alpha1
# Contact: gopad@webhippie.de
# Generated by: https://openapi-generator.tech
# Generator version: 7.6.0
#

# Common files
require 'gopad/api_client'
require 'gopad/api_error'
require 'gopad/version'
require 'gopad/configuration'

# Models
require 'gopad/models/auth_login'
require 'gopad/models/auth_token'
require 'gopad/models/auth_verify'
require 'gopad/models/notification'
require 'gopad/models/profile'
require 'gopad/models/team'
require 'gopad/models/team_user_params'
require 'gopad/models/team_users'
require 'gopad/models/teams'
require 'gopad/models/user'
require 'gopad/models/user_auth'
require 'gopad/models/user_team'
require 'gopad/models/user_team_params'
require 'gopad/models/user_teams'
require 'gopad/models/users'
require 'gopad/models/validation'

# APIs
require 'gopad/api/auth_api'
require 'gopad/api/profile_api'
require 'gopad/api/team_api'
require 'gopad/api/user_api'

module Gopad
  class << self
    # Customize default settings for the SDK using block.
    #   Gopad.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end

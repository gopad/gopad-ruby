# Gopad OpenAPI
#
# API definition for Gopad, Etherpad for markdown with go
#
# The version of the OpenAPI document: 1.0.0-alpha1
# Contact: gopad@webhippie.de
# Generated by: https://openapi-generator.tech
# Generator version: 7.6.0
#

require 'cgi'

module Gopad
  class AuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Callback for external authentication
    # @param provider [String] An identifier for the auth provider
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state Auth state
    # @option opts [String] :code Auth code
    # @return [Notification]
    def external_callback(provider, opts = {})
      data, _status_code, _headers = external_callback_with_http_info(provider, opts)
      data
    end

    # Callback for external authentication
    # @param provider [String] An identifier for the auth provider
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state Auth state
    # @option opts [String] :code Auth code
    # @return [Array<(Notification, Integer, Hash)>] Notification data, response status code and response headers
    def external_callback_with_http_info(provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.external_callback ...'
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        raise ArgumentError, "Missing the required parameter 'provider' when calling AuthApi.external_callback"
      end

      # resource path
      local_var_path = '/auth/{provider}/callback'.sub('{' + 'provider' + '}', CGI.escape(provider.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:state] = opts[:state] unless opts[:state].nil?
      query_params[:code] = opts[:code] unless opts[:code].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Notification'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        operation: :'AuthApi.external_callback',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#external_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Initialize the external authentication
    # @param provider [String] An identifier for the auth provider
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state Auth state
    # @return [Notification]
    def external_initialize(provider, opts = {})
      data, _status_code, _headers = external_initialize_with_http_info(provider, opts)
      data
    end

    # Initialize the external authentication
    # @param provider [String] An identifier for the auth provider
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state Auth state
    # @return [Array<(Notification, Integer, Hash)>] Notification data, response status code and response headers
    def external_initialize_with_http_info(provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.external_initialize ...'
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        raise ArgumentError, "Missing the required parameter 'provider' when calling AuthApi.external_initialize"
      end

      # resource path
      local_var_path = '/auth/{provider}/initialize'.sub('{' + 'provider' + '}', CGI.escape(provider.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:state] = opts[:state] unless opts[:state].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Notification'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        operation: :'AuthApi.external_initialize',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#external_initialize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
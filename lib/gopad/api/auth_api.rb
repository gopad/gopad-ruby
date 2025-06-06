# Gopad OpenAPI
#
# API definition for Gopad, Etherpad for markdown with Go
#
# The version of the OpenAPI document: 1.0.0-alpha1
# Contact: gopad@webhippie.de
# Generated by: https://openapi-generator.tech
# Generator version: 7.13.0
#

require 'cgi'

module Gopad
  class AuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Callback to parse the defined provider
    # @param provider [String] An identifier for the auth provider
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state Auth state
    # @option opts [String] :code Auth code
    # @return [nil]
    def callback_provider(provider, opts = {})
      callback_provider_with_http_info(provider, opts)
      nil
    end

    # Callback to parse the defined provider
    # @param provider [String] An identifier for the auth provider
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state Auth state
    # @option opts [String] :code Auth code
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def callback_provider_with_http_info(provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.callback_provider ...'
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        raise ArgumentError, "Missing the required parameter 'provider' when calling AuthApi.callback_provider"
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
      header_params['Accept'] = @api_client.select_header_accept(['text/html']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        operation: :'AuthApi.callback_provider',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#callback_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Fetch the available auth providers
    # @param [Hash] opts the optional parameters
    # @return [ListProviders200Response]
    def list_providers(opts = {})
      data, _status_code, _headers = list_providers_with_http_info(opts)
      data
    end

    # Fetch the available auth providers
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListProviders200Response, Integer, Hash)>] ListProviders200Response data, response status code and response headers
    def list_providers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.list_providers ...'
      end
      # resource path
      local_var_path = '/auth/providers'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListProviders200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        operation: :'AuthApi.list_providers',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#list_providers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Authenticate an user by credentials
    # @param login_auth_request [LoginAuthRequest] The credentials to authenticate
    # @param [Hash] opts the optional parameters
    # @return [AuthToken]
    def login_auth(login_auth_request, opts = {})
      data, _status_code, _headers = login_auth_with_http_info(login_auth_request, opts)
      data
    end

    # Authenticate an user by credentials
    # @param login_auth_request [LoginAuthRequest] The credentials to authenticate
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthToken, Integer, Hash)>] AuthToken data, response status code and response headers
    def login_auth_with_http_info(login_auth_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.login_auth ...'
      end
      # verify the required parameter 'login_auth_request' is set
      if @api_client.config.client_side_validation && login_auth_request.nil?
        raise ArgumentError, "Missing the required parameter 'login_auth_request' when calling AuthApi.login_auth"
      end

      # resource path
      local_var_path = '/auth/login'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(login_auth_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthToken'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        operation: :'AuthApi.login_auth',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#login_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieve real token after redirect
    # @param redirect_auth_request [RedirectAuthRequest] The redirect token to authenticate
    # @param [Hash] opts the optional parameters
    # @return [AuthToken]
    def redirect_auth(redirect_auth_request, opts = {})
      data, _status_code, _headers = redirect_auth_with_http_info(redirect_auth_request, opts)
      data
    end

    # Retrieve real token after redirect
    # @param redirect_auth_request [RedirectAuthRequest] The redirect token to authenticate
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthToken, Integer, Hash)>] AuthToken data, response status code and response headers
    def redirect_auth_with_http_info(redirect_auth_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.redirect_auth ...'
      end
      # verify the required parameter 'redirect_auth_request' is set
      if @api_client.config.client_side_validation && redirect_auth_request.nil?
        raise ArgumentError, "Missing the required parameter 'redirect_auth_request' when calling AuthApi.redirect_auth"
      end

      # resource path
      local_var_path = '/auth/redirect'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(redirect_auth_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthToken'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        operation: :'AuthApi.redirect_auth',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#redirect_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Refresh an auth token before it expires
    # @param [Hash] opts the optional parameters
    # @return [AuthToken]
    def refresh_auth(opts = {})
      data, _status_code, _headers = refresh_auth_with_http_info(opts)
      data
    end

    # Refresh an auth token before it expires
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthToken, Integer, Hash)>] AuthToken data, response status code and response headers
    def refresh_auth_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.refresh_auth ...'
      end
      # resource path
      local_var_path = '/auth/refresh'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AuthToken'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Basic Header Bearer]

      new_options = opts.merge(
        operation: :'AuthApi.refresh_auth',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#refresh_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Request the redirect to defined provider
    # @param provider [String] An identifier for the auth provider
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def request_provider(provider, opts = {})
      request_provider_with_http_info(provider, opts)
      nil
    end

    # Request the redirect to defined provider
    # @param provider [String] An identifier for the auth provider
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def request_provider_with_http_info(provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.request_provider ...'
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        raise ArgumentError, "Missing the required parameter 'provider' when calling AuthApi.request_provider"
      end

      # resource path
      local_var_path = '/auth/{provider}/request'.sub('{' + 'provider' + '}', CGI.escape(provider.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        operation: :'AuthApi.request_provider',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#request_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Verify validity for an authentication token
    # @param [Hash] opts the optional parameters
    # @return [AuthVerify]
    def verify_auth(opts = {})
      data, _status_code, _headers = verify_auth_with_http_info(opts)
      data
    end

    # Verify validity for an authentication token
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthVerify, Integer, Hash)>] AuthVerify data, response status code and response headers
    def verify_auth_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.verify_auth ...'
      end
      # resource path
      local_var_path = '/auth/verify'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AuthVerify'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Basic Header Bearer]

      new_options = opts.merge(
        operation: :'AuthApi.verify_auth',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#verify_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end

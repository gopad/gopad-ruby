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
  class GroupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Attach a user to group
    # @param group_id [String] A group identifier or slug
    # @param permit_group_user_request [PermitGroupUserRequest] The group user data to permit
    # @param [Hash] opts the optional parameters
    # @return [Notification]
    def attach_group_to_user(group_id, permit_group_user_request, opts = {})
      data, _status_code, _headers = attach_group_to_user_with_http_info(group_id, permit_group_user_request, opts)
      data
    end

    # Attach a user to group
    # @param group_id [String] A group identifier or slug
    # @param permit_group_user_request [PermitGroupUserRequest] The group user data to permit
    # @param [Hash] opts the optional parameters
    # @return [Array<(Notification, Integer, Hash)>] Notification data, response status code and response headers
    def attach_group_to_user_with_http_info(group_id, permit_group_user_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.attach_group_to_user ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError, "Missing the required parameter 'group_id' when calling GroupApi.attach_group_to_user"
      end
      # verify the required parameter 'permit_group_user_request' is set
      if @api_client.config.client_side_validation && permit_group_user_request.nil?
        raise ArgumentError, "Missing the required parameter 'permit_group_user_request' when calling GroupApi.attach_group_to_user"
      end

      # resource path
      local_var_path = '/groups/{group_id}/users'.sub('{' + 'group_id' + '}', CGI.escape(group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(permit_group_user_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Notification'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Basic Header Bearer]

      new_options = opts.merge(
        operation: :'GroupApi.attach_group_to_user',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#attach_group_to_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Create a new group
    # @param create_group_request [CreateGroupRequest] The group data to create
    # @param [Hash] opts the optional parameters
    # @return [Group]
    def create_group(create_group_request, opts = {})
      data, _status_code, _headers = create_group_with_http_info(create_group_request, opts)
      data
    end

    # Create a new group
    # @param create_group_request [CreateGroupRequest] The group data to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(Group, Integer, Hash)>] Group data, response status code and response headers
    def create_group_with_http_info(create_group_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.create_group ...'
      end
      # verify the required parameter 'create_group_request' is set
      if @api_client.config.client_side_validation && create_group_request.nil?
        raise ArgumentError, "Missing the required parameter 'create_group_request' when calling GroupApi.create_group"
      end

      # resource path
      local_var_path = '/groups'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_group_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Group'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Basic Header Bearer]

      new_options = opts.merge(
        operation: :'GroupApi.create_group',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#create_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete a specific group
    # @param group_id [String] A group identifier or slug
    # @param [Hash] opts the optional parameters
    # @return [Notification]
    def delete_group(group_id, opts = {})
      data, _status_code, _headers = delete_group_with_http_info(group_id, opts)
      data
    end

    # Delete a specific group
    # @param group_id [String] A group identifier or slug
    # @param [Hash] opts the optional parameters
    # @return [Array<(Notification, Integer, Hash)>] Notification data, response status code and response headers
    def delete_group_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.delete_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError, "Missing the required parameter 'group_id' when calling GroupApi.delete_group"
      end

      # resource path
      local_var_path = '/groups/{group_id}'.sub('{' + 'group_id' + '}', CGI.escape(group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Notification'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Basic Header Bearer]

      new_options = opts.merge(
        operation: :'GroupApi.delete_group',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#delete_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Unlink a user from group
    # @param group_id [String] A group identifier or slug
    # @param delete_group_from_user_request [DeleteGroupFromUserRequest] The group user data to unlink
    # @param [Hash] opts the optional parameters
    # @return [Notification]
    def delete_group_from_user(group_id, delete_group_from_user_request, opts = {})
      data, _status_code, _headers = delete_group_from_user_with_http_info(group_id, delete_group_from_user_request, opts)
      data
    end

    # Unlink a user from group
    # @param group_id [String] A group identifier or slug
    # @param delete_group_from_user_request [DeleteGroupFromUserRequest] The group user data to unlink
    # @param [Hash] opts the optional parameters
    # @return [Array<(Notification, Integer, Hash)>] Notification data, response status code and response headers
    def delete_group_from_user_with_http_info(group_id, delete_group_from_user_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.delete_group_from_user ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError, "Missing the required parameter 'group_id' when calling GroupApi.delete_group_from_user"
      end
      # verify the required parameter 'delete_group_from_user_request' is set
      if @api_client.config.client_side_validation && delete_group_from_user_request.nil?
        raise ArgumentError, "Missing the required parameter 'delete_group_from_user_request' when calling GroupApi.delete_group_from_user"
      end

      # resource path
      local_var_path = '/groups/{group_id}/users'.sub('{' + 'group_id' + '}', CGI.escape(group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_group_from_user_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Notification'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Basic Header Bearer]

      new_options = opts.merge(
        operation: :'GroupApi.delete_group_from_user',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#delete_group_from_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Fetch all users attached to group
    # @param group_id [String] A group identifier or slug
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Search query
    # @option opts [String] :sort Sorting column
    # @option opts [String] :order Sorting order (default to 'asc')
    # @option opts [Integer] :limit Paging limit (default to 100)
    # @option opts [Integer] :offset Paging offset (default to 0)
    # @return [ListGroupUsers200Response]
    def list_group_users(group_id, opts = {})
      data, _status_code, _headers = list_group_users_with_http_info(group_id, opts)
      data
    end

    # Fetch all users attached to group
    # @param group_id [String] A group identifier or slug
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Search query
    # @option opts [String] :sort Sorting column
    # @option opts [String] :order Sorting order (default to 'asc')
    # @option opts [Integer] :limit Paging limit (default to 100)
    # @option opts [Integer] :offset Paging offset (default to 0)
    # @return [Array<(ListGroupUsers200Response, Integer, Hash)>] ListGroupUsers200Response data, response status code and response headers
    def list_group_users_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.list_group_users ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError, "Missing the required parameter 'group_id' when calling GroupApi.list_group_users"
      end

      allowable_values = %w[asc desc]
      if @api_client.config.client_side_validation && opts[:order] && !allowable_values.include?(opts[:order])
        raise ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end

      # resource path
      local_var_path = '/groups/{group_id}/users'.sub('{' + 'group_id' + '}', CGI.escape(group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:search] = opts[:search] unless opts[:search].nil?
      query_params[:sort] = opts[:sort] unless opts[:sort].nil?
      query_params[:order] = opts[:order] unless opts[:order].nil?
      query_params[:limit] = opts[:limit] unless opts[:limit].nil?
      query_params[:offset] = opts[:offset] unless opts[:offset].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListGroupUsers200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Basic Header Bearer]

      new_options = opts.merge(
        operation: :'GroupApi.list_group_users',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#list_group_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Fetch all available groups
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Search query
    # @option opts [String] :sort Sorting column
    # @option opts [String] :order Sorting order (default to 'asc')
    # @option opts [Integer] :limit Paging limit (default to 100)
    # @option opts [Integer] :offset Paging offset (default to 0)
    # @return [ListGroups200Response]
    def list_groups(opts = {})
      data, _status_code, _headers = list_groups_with_http_info(opts)
      data
    end

    # Fetch all available groups
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Search query
    # @option opts [String] :sort Sorting column
    # @option opts [String] :order Sorting order (default to 'asc')
    # @option opts [Integer] :limit Paging limit (default to 100)
    # @option opts [Integer] :offset Paging offset (default to 0)
    # @return [Array<(ListGroups200Response, Integer, Hash)>] ListGroups200Response data, response status code and response headers
    def list_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.list_groups ...'
      end
      allowable_values = %w[asc desc]
      if @api_client.config.client_side_validation && opts[:order] && !allowable_values.include?(opts[:order])
        raise ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end

      # resource path
      local_var_path = '/groups'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:search] = opts[:search] unless opts[:search].nil?
      query_params[:sort] = opts[:sort] unless opts[:sort].nil?
      query_params[:order] = opts[:order] unless opts[:order].nil?
      query_params[:limit] = opts[:limit] unless opts[:limit].nil?
      query_params[:offset] = opts[:offset] unless opts[:offset].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListGroups200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Basic Header Bearer]

      new_options = opts.merge(
        operation: :'GroupApi.list_groups',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#list_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Update user perms for group
    # @param group_id [String] A group identifier or slug
    # @param permit_group_user_request [PermitGroupUserRequest] The group user data to permit
    # @param [Hash] opts the optional parameters
    # @return [Notification]
    def permit_group_user(group_id, permit_group_user_request, opts = {})
      data, _status_code, _headers = permit_group_user_with_http_info(group_id, permit_group_user_request, opts)
      data
    end

    # Update user perms for group
    # @param group_id [String] A group identifier or slug
    # @param permit_group_user_request [PermitGroupUserRequest] The group user data to permit
    # @param [Hash] opts the optional parameters
    # @return [Array<(Notification, Integer, Hash)>] Notification data, response status code and response headers
    def permit_group_user_with_http_info(group_id, permit_group_user_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.permit_group_user ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError, "Missing the required parameter 'group_id' when calling GroupApi.permit_group_user"
      end
      # verify the required parameter 'permit_group_user_request' is set
      if @api_client.config.client_side_validation && permit_group_user_request.nil?
        raise ArgumentError, "Missing the required parameter 'permit_group_user_request' when calling GroupApi.permit_group_user"
      end

      # resource path
      local_var_path = '/groups/{group_id}/users'.sub('{' + 'group_id' + '}', CGI.escape(group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(permit_group_user_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Notification'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Basic Header Bearer]

      new_options = opts.merge(
        operation: :'GroupApi.permit_group_user',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#permit_group_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Fetch a specific group
    # @param group_id [String] A group identifier or slug
    # @param [Hash] opts the optional parameters
    # @return [Group]
    def show_group(group_id, opts = {})
      data, _status_code, _headers = show_group_with_http_info(group_id, opts)
      data
    end

    # Fetch a specific group
    # @param group_id [String] A group identifier or slug
    # @param [Hash] opts the optional parameters
    # @return [Array<(Group, Integer, Hash)>] Group data, response status code and response headers
    def show_group_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.show_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError, "Missing the required parameter 'group_id' when calling GroupApi.show_group"
      end

      # resource path
      local_var_path = '/groups/{group_id}'.sub('{' + 'group_id' + '}', CGI.escape(group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Group'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Basic Header Bearer]

      new_options = opts.merge(
        operation: :'GroupApi.show_group',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#show_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Update a specific group
    # @param group_id [String] A group identifier or slug
    # @param create_group_request [CreateGroupRequest] The group data to update
    # @param [Hash] opts the optional parameters
    # @return [Group]
    def update_group(group_id, create_group_request, opts = {})
      data, _status_code, _headers = update_group_with_http_info(group_id, create_group_request, opts)
      data
    end

    # Update a specific group
    # @param group_id [String] A group identifier or slug
    # @param create_group_request [CreateGroupRequest] The group data to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(Group, Integer, Hash)>] Group data, response status code and response headers
    def update_group_with_http_info(group_id, create_group_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.update_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError, "Missing the required parameter 'group_id' when calling GroupApi.update_group"
      end
      # verify the required parameter 'create_group_request' is set
      if @api_client.config.client_side_validation && create_group_request.nil?
        raise ArgumentError, "Missing the required parameter 'create_group_request' when calling GroupApi.update_group"
      end

      # resource path
      local_var_path = '/groups/{group_id}'.sub('{' + 'group_id' + '}', CGI.escape(group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_group_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Group'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Basic Header Bearer]

      new_options = opts.merge(
        operation: :'GroupApi.update_group',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#update_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end

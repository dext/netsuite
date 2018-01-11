# https://system.netsuite.com/help/helpcenter/en_US/Output/Help/SuiteCloudCustomizationScriptingWebServices/SuiteTalkWebServices/delete.html
module NetSuite
  module Actions
    class Delete
      include Support::Requests

      def initialize(object = nil, options = {})
        @object  = object
        @options = options
      end

      private

      def request(credentials={})
        NetSuite::Configuration.connection(
          {namespaces: {
            'xmlns:platformMsgs' => "urn:messages_#{NetSuite::Configuration.api_version}.platform.webservices.netsuite.com",
            'xmlns:platformCore' => "urn:core_#{NetSuite::Configuration.api_version}.platform.webservices.netsuite.com"
          }}, credentials
        ).call :delete, message: request_body
      end

      def soap_type
        @object.class.to_s.split('::').last.lower_camelcase
      end

      # <soap:Body>
      #   <platformMsgs:delete>
      #     <platformMsgs:baseRef internalId="980" type="customer" xsi:type="platformCore:RecordRef"/>
      #   </platformMsgs:delete>
      # </soap:Body>
      def request_body
        body = {
          'platformMsgs:baseRef' => {
            '@xsi:type'   => (@options[:custom] ? 'platformCore:CustomRecordRef' : 'platformCore:RecordRef')
          },
        }

        if @object.respond_to?(:external_id) && @object.external_id
          body['platformMsgs:baseRef']['@externalId'] = @object.external_id
        end

        if @object.respond_to?(:internal_id) && @object.internal_id
          body['platformMsgs:baseRef']['@internalId'] = @object.internal_id
        end

        if @object.class.respond_to?(:type_id) && @object.class.type_id
          body['platformMsgs:baseRef']['@typeId'] = @object.class.type_id
        end

        body['platformMsgs:baseRef']['@type'] = soap_type unless @options[:custom]

        body
      end

      def response_hash
        @response_hash ||= @response.to_hash[:delete_response][:write_response]
      end

      def success?
        @success ||= response_hash[:status][:@is_success] == 'true'
      end

      def response_body
        @response_body ||= response_hash[:base_ref]
      end

      def response_errors
        if response_hash.any? { |k, v| k == :status && v[:@is_success] == 'false' }
          @response_errors ||= errors
        end
      end

      def errors
        status_detail = response_hash.dig(:status, :status_detail)
        if status_detail
          [NetSuite::Error.new(status_detail)]
        else
          []
        end
      end

      module Support
        def delete(options = {}, credentials={})
          response =  if options.empty?
                        NetSuite::Actions::Delete.call([self], credentials)
                      else
                        NetSuite::Actions::Delete.call([self, options], credentials)
                      end

          @errors = response.errors

          response.success?
        end
      end

    end
  end
end

require 'rest-client'

module Africansms
  class Client
    attr_reader :params

    def initialize(params)
      @params = params
    end

    def send_message
      raise(AfricansmsError, 'The message to send should not be empty') unless valid_message?

      response = RestClient.post(base_url, request_params, request_header)
      response.body
    rescue StandardError => e
      e
    end

    private

    def request_params
      params.merge(
        username: Africansms.configuration.username!,
        from: Africansms.configuration.shortcode!
      )
    end

    def request_header
      {
        content_type: 'application/x-www-form-urlencoded',
        apiKey: Africansms.configuration.api_key!
      }
    end

    def base_url
      if params[:mode].eql?('live')
        'https://api.africastalking.com/version1/messaging'
      else
        'https://api.sandbox.africastalking.com/version1/messaging'
      end
    end

    def valid_message?
      params[:message] && !params[:message].empty?
    end
  end
end

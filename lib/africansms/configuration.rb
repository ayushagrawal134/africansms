module Africansms
  class Configuration
    attr_accessor :api_key, :username, :shortcode

    def initialize
      @api_key = nil
      @username = nil
      @shortcode = nil
    end

    def api_key!
      api_key || raise(AfricansmsError, 'No api key specified.')
    end

    def username!
      username || raise(AfricansmsError, 'No username specified.')
    end

    def shortcode!
      shortcode || raise(AfricansmsError, 'No shortcode specified.')
    end
  end
end

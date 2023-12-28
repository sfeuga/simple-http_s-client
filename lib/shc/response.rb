require 'multi_json'

module SHC
  ##
  # Response class
  #
  class Response
    attr_reader :headers, :status_code, :body

    ##
    # Create a new response
    #
    # @param response[Net::HTTPResponse] The response
    #
    def initialize(response)
      @status_code = response.code
      @headers = response.to_hash
      @body = MultiJson.decode response.body
    end

    def error?
      @body.has_key('error')
    end
  end
end

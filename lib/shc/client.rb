module SHC
  ##
  # Client class
  #
  class Client
    attr_reader :host, :request_headers, :url

    ##
    # Create a new client
    #
    # @param host[String] base url of the API
    # @param request_headers[Hash] the headers of the query
    # @param url[Array<String>] the API url segments
    # @param version[String] the API version
    #
    def initialize(host: nil, request_headers: nil, url: nil, version: nil)
      @host = host
      @request_headers = request_headers || {}
      @url = url || []
      @version = version
      @methods = %w[delete get patch post put]
      @query_params = nil
      @request_body = nil
    end
  end
end

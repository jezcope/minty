require "minty/version"

require "rest_client"

module Minty

  class DataCite

    def initialize(endpoint = 'http://test.datacite.com')
      @endpoint = endpoint
    end

    def resolve(doi)
      response = RestClient.get "#{@endpoint}/doi/#{doi}"
      response.to_str
    end

  end

end

require "minty/version"

require "rest_client"

module Minty

  class DataCite

    def initialize(endpoint = 'http://test.datacite.com', user = nil, pass = nil)
      @endpoint = RestClient::Resource.new(endpoint, user, pass)
    end

    def resolve(doi)
      response = @endpoint["doi/#{doi}"].get
    end

    def mint(doi, url)
      response = @endpoint['doi'].post "doi=#{doi}\nurl=#{url}",
        :content_type => 'text/plain;charset=UTF-8'
    end
  end

end

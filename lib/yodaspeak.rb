require "yodaspeak/version"

module Yodaspeak

  module Default
    @@api_endpoint = "https://yoda.p.mashape.com/yoda?sentence="
  end

  def self.speak words
    include Default
    @api_endpoint = @@api_endpoint
    yodaish = words.split(" ").join("+")
    @api_endpoint += yodaish
    Unirest.get(@api_endpoint, headers: @headers)
  end

  def self.credentials api_key
    @headers= {
      "X-Mashape-Key" => api_key,
      "Accept" => "text/plain"
    }
  end

end

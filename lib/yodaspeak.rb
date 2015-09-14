require "yodaspeak/version"
require "Unirest"

module Yodaspeak

  module Default
    @@api_endpoint = "https://yoda.p.mashape.com/yoda"
  end

  def self.speak words
    @@api_endpoint += "?sentence=" + words.split(" ").join("+")
    Unirest.get("https://yoda.p.mashape.com/yoda?sentence=You+will+learn+how+to+speak+like+me+someday.++Oh+wait.", headers: credentials)
  end

  def self.credentials api_key
    {
      "X-Mashape-Key" => api_key,
      "Accept" => "text/plain"
    }
  end

end

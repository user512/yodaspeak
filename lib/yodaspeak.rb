require "yodaspeak/version"
require 'unirest'

class Yodaspeak
  ENDPOINT = "https://yoda.p.mashape.com/yoda".freeze

  attr_writer :api_key

  def initialize(api_key = nil)
    @api_key = api_key
  end

  def speak(words)
    words.gsub!(" ", "+")
    Unirest.get("#{ENDPOINT}?sentence=#{words}", headers: headers).body
  end

  private

  def headers
    {
      "X-Mashape-Key" => @api_key,
      "Accept"        => "text/plain"
    }
  end
end

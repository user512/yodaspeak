require 'spec_helper'

describe Yodaspeak do
  it 'has a version number' do
    expect(Yodaspeak::VERSION).not_to be nil
  end

  describe '#speak', :vcr do
    subject { yodaspeak.speak("I will be a man like yoda.") }
    let(:yodaspeak) { Yodaspeak.new(api_key) }
    let(:api_key) { "VzHoZcrJ2JmshtxppwEzlfzaRW60p1Syat9jsnglzJHljoAwf5" }

    it "returns yodaish" do
      is_expected.to eq "Man like yoda, will I be.  Yeesssssss."
    end
  end

  describe '#headers' do
    subject { yodaspeak.instance_eval { headers } }
    let(:yodaspeak) { Yodaspeak.new("API_KEY") }

    it "gets headers" do
      is_expected.to include "X-Mashape-Key" => "API_KEY",
                             "Accept"        => "text/plain"
    end
  end
end

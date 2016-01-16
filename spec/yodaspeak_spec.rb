require 'spec_helper'

describe Yodaspeak do
  it 'has a version number' do
    expect(Yodaspeak::VERSION).not_to be nil
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

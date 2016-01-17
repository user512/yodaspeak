# Yodaspeak [![Gem Version](https://badge.fury.io/rb/yodaspeak.svg)](http://badge.fury.io/rb/yodaspeak)

This is a ruby gem to consume the Yoda Speak API.
Please obtain API key from mashape.com to get started.

Credit to http://www.yodaspeak.co.uk/ and ISMAELC


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yodaspeak'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yodaspeak

## Usage

```ruby
  require 'yodaspeak'

  yoda = Yodaspeak.new("API_KEY")
  yoda.speak("You must seek advice.")
  #=> "Seek advice, you must.  Yeesssssss."
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/user512/yodaspeak. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


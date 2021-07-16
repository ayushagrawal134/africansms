# Africansms

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/africansms`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'africansms'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install africansms

### Overview

Africansms is an integration of Africastalking SMS service. Before using the gem you should have a knowledge Africastalking SMS service. Documentation URL: https://developers.africastalking.com/docs/sms/overview 
You have to create an account on AfricasTalking to get the required configration credentials (api_key, username & shortcode).

### Configuration

Add below configuration in initializer

``` ruby
# config/initializers/africansms.rb

Africansms.configure do |config|
  config.api_key = 'Africas talking API Key'
  config.username = 'Africas talking username'
  config.shortcode = 'Africas talking shortcode'
end
```
### Uses

##### Send message 

Africansms provides an API send message (Africastalking integration) using which you can Send and receive SMS to more than 300 million mobile subscribers across Africa.

.

```ruby
request_params = {
  to: 'A comma separated string of recipients’ phone numbers (required)',
  message: 'The message to be sent. (required)',
  mode: 'live'
}

response = Africansms::Client.new(request_params).send_message

```
Note: By default mode is sandbox. 'live' should be given for live endpoint of Africas talking.

In response you will get a XML response in the case of success & error in the case of Failed.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/africansms. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/africansms/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Africansms project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/africansms/blob/master/CODE_OF_CONDUCT.md).

# DateTimeWithZone

Helps with set time with a zone.

## Installation

Add this line to your application's Gemfile:

    gem 'date_time_with_zone'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install date_time_with_zone

## Usage

```ruby
input = {date: "2014-03-14", time: "05:15 PM", zone: "Beijing"}
datetime = DateTimeWithZone::DateTime.new(input).to_datetime
p datetime.zone
# => CST
p datetime.strftime('%Y-%m-%d')
# => 2014-03-14
```

## Contributing

1. Fork it ( https://github.com/he9lin/date_time_with_zone/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

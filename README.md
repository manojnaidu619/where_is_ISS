# Wanna know Where is ISS?

Ruby gem to track ISS(International Space Station)

[![Build Status](https://travis-ci.org/manojnaidu619/where_is_ISS.svg?branch=master)](https://travis-ci.org/manojnaidu619/where_is_ISS)
[![Coverage Status](https://coveralls.io/repos/github/manojnaidu619/where_is_ISS/badge.svg?branch=master)](https://coveralls.io/github/manojnaidu619/where_is_ISS?branch=master)
[![Gem Version](https://badge.fury.io/rb/where_is_ISS.svg)](https://badge.fury.io/rb/where_is_ISS)
[![codecov](https://codecov.io/gh/manojnaidu619/where_is_ISS/branch/master/graph/badge.svg)](https://codecov.io/gh/manojnaidu619/where_is_ISS)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'where_is_ISS'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install where_is_ISS

## How to use:

#### To track ISS

```ruby
 require 'where_is_ISS'
 Iss.track   
```
> Europe/Brussels

#### To get the coordinates

```ruby
 require 'where_is_ISS'
 Iss.coordinates?
```
> [39.905690278098, 130.19768130925]
>
> [latitude, longitude]

#### To get complete data

```ruby
 require 'where_is_ISS'
 Iss.info?
```
> ["iss", 25544, 33.713440406913, 139.04106708983, 408.17433114318, 27613.034267873, "eclipsed", 1538486806, -3.6899752437549, 335.64562066714, "kilometers"]
>
> [name, id, latitude, longitude, altitude, velocity, visibility, timestamp, solar latitude, solar longitude, units]

## Contributing

Bug reports and pull requests are welcome, follow these steps to contribute to this project..

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the Branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

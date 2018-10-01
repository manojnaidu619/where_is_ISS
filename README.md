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
> International Space Station is over Europe/Brussels

#### To get the coordinates

```ruby
 require 'where_is_ISS'
 Iss.coordinates?
```
> ISS current Latitude : 39.217404733948
>
> ISS current Longitude : 70.387933714929


#### To get complete data

```ruby
 require 'where_is_ISS'
 Iss.info?
```
> name : iss
>
> id : 25544
>
> latitude : 39.217404733948
>
> longitude : 70.387933714929
>
> altitude : 409.37505604794
>
> velocity : 27612.529171021
>
> visibility : eclipsed
>
> timestamp : 1538331076
>
> Solar Latitude : -2.9915448989155
>
> Solar Longitude : 264.66551212567
>
> units : kilometers


## Contributing

Bug reports and pull requests are welcome, follow these steps to contribute to this project..

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the Branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

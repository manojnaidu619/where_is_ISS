# WhereIsISS

Ruby gem to track ISS(International Space Station)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'where_is_ISS'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install where_is_ISS

## Usage

### To track

```ruby
$ require 'where_is_ISS'
$ Iss.track   
```
> International Space Station is over Europe/Brussels

### To get the coordinates

```ruby
$ require 'where_is_ISS'
$ Iss.coordinates
```
> ISS current Latitude : 39.217404733948
  ISS current Longitude : 70.387933714929

### To get complete data

```ruby
$ require 'where_is_ISS'
$ Iss.info
```
> name : iss
id : 25544
latitude : 39.217404733948
longitude : 70.387933714929
altitude : 409.37505604794
velocity : 27612.529171021
visibility : eclipsed
timestamp : 1538331076
Solar Latitude : -2.9915448989155
Solar Longitude : 264.66551212567
units : kilometers  

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/manojnaidu619/where_is_ISS. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

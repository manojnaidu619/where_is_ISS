# Wanna know Where is ISS?

Ruby gem to track ISS(International Space Station)

[![Build Status](https://travis-ci.org/manojnaidu619/where_is_ISS.svg?branch=master)](https://travis-ci.org/manojnaidu619/where_is_ISS)
[![Coverage Status](https://coveralls.io/repos/github/manojnaidu619/where_is_ISS/badge.svg?branch=master)](https://coveralls.io/github/manojnaidu619/where_is_ISS?branch=master)
[![Gem Version](https://badge.fury.io/rb/where_is_ISS.svg)](https://badge.fury.io/rb/where_is_ISS)
[![codecov](https://codecov.io/gh/manojnaidu619/where_is_ISS/branch/master/graph/badge.svg)](https://codecov.io/gh/manojnaidu619/where_is_ISS)
[![Gem](https://img.shields.io/gem/v/where_is_ISS.svg?style=flat)](http://rubygems.org/gems/where_is_ISS "View this project in Rubygems")

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/manojnaidu619/where_is_ISS/pulls) [![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/manojnaidu619)


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
 Iss.coordinates
```
> [39.905690278098, 130.19768130925]
>
> [latitude, longitude]

#### To get complete data

```ruby
 require 'where_is_ISS'
 Iss.info
```
> ["iss", 25544, 33.713440406913, 139.04106708983, 408.17433114318, 27613.034267873, "eclipsed", 1538486806, -3.6899752437549, 335.64562066714, "kilometers"]
>
> [name, id, latitude, longitude, altitude, velocity, visibility, timestamp, solar latitude, solar longitude, units]

#### list people on ISS

```ruby
 require 'where_is_ISS'
 Iss.members
```
> ["Oleg Artemyev", "Andrew Feustel", "Richard Arnold", "Sergey Prokopyev", "Alexander Gerst", "Serena Aunon-Chancellor"]

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/manojnaidu619/where_is_ISS/pulls)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

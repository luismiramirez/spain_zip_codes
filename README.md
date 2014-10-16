# SpainZipCodes

With SpainZipCodes you can obtain Spain locations and provinces using a zip code and you can obtain zip codes for provinces and locations using their names!

## Installation

Add this line to your application's Gemfile:

    gem 'spain_zip_codes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spain_zip_codes

Require the gem:

```ruby
require 'spain_zip_codes'
```
## Usage

### Provinces

To get a province name from a zip code do:

```ruby
SpainZipCodes.zip_to_province(zip)

> SpainZipCodes.zip_to_province('28001')
=> 'Madrid'
```

To get a zip code prefix for a province do:

```ruby
SpainZipCodes.province_to_zip(province)

> SpainZipCodes.province_to_zip('Madrid')
=> '28'
```

### Locations

To get a location name from a zip code do:

```ruby
SpainZipCodes.zip_to_location(zip)

> SpainZipCodes.zip_to_location('28922')
=> 'Alcorcón'
```

To get the zip codes from a location name do:

```ruby
SpainZipCodes.location_to_zip(location)

> SpainZipCodes.location_to_zip('Alcorcón')
=> ['28920', '28921', '28922', '28923', '28924', '28925']

# A not found location will return an empty array

> SpainZipCodes.location_to_zip('Gallifrey')
=> []
```

Note:

Arguments need to be strings.

If you give a function an invalid argument or nothing is found it will always return ``false``  

## Contributing

1. Fork it ( https://github.com/luismiramirez/spain_zip_codes/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

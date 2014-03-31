# Parapet::Service

A Parapet Service sets a couple defaults for building services.
Currently is implemented as a strimed down Rails application 
template with defaults like:

* HTTP verbs (GET POST PATCH DELETE)
* JSON response and POST bodies
* HTTP Caching semantics (ETag, etc)
* Date versioning (A la Fourquare) ("Accept: application/json; version=YYYYMMDD")


## Installation

Add this line to your application's Gemfile:

    gem 'parapet-service'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install parapet-service

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( http://github.com/<my-github-username>/parapet-service/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

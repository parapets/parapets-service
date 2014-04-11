# Parapets::Service

[![Build Status](https://travis-ci.org/parapets/parapets-service.svg?branch=master)](https://travis-ci.org/parapets/parapets-service)
[![Code Climate](https://codeclimate.com/github/parapets/parapets-service.png)](https://codeclimate.com/github/parapets/parapets-service)
[![Coverage](https://codeclimate.com/github/parapets/parapets-service/coverage.png)](https://codeclimate.com/github/parapets/parapets-service)

A Parapet Service sets a couple defaults for building services.
Currently is implemented as a strimed down Rails application 
template with defaults like:

* HTTP verbs (GET POST PATCH DELETE)
* JSON response and POST bodies
* HTTP Caching semantics (ETag, etc)
* Date versioning (A la Fourquare) ("Accept: application/json; version=YYYYMMDD")

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( http://github.com/parapets/parapets-service/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

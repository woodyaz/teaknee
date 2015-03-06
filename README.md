# Tea Knee

[![Build Status](https://travis-ci.org/woodyaz/teaknee.svg?branch=master)](https://travis-ci.org/woodyaz/teaknee)

## Synopsis

Tea Knee is quite simply the best damn URL shortener, ever.  It should **never ever ever ever** be deployed to production in any way, shape, or form.

## Motivation

Insomnia.

## Installation

Clone master, then run ruby teaknee.rb.  Domain redirects are stored in an array as hash values in memory, so everything goes away when the service is stopped.

## API Reference

GET /go/:id - Redirect to the domain with the id of :id
POST /add, "domain" => :domain - Add a new domain.

## Tests

bundle exec rspec, and you should be golden.

## License

Copyright (C) 2015 Woody Hansen

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see [http://www.gnu.org/copyleft/gpl.html](http://www.gnu.org/copyleft/gpl.html).

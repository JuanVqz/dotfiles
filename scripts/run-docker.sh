#!/bin/bash

# using this script helps us having the ability to use the pry gem
# example
# been in some controller, view, test, etc. add the pry call
# = require 'pry'; binding.pry for views
# require 'pry'; binding.pry for controllers and testing
# and then refresh the page, we will have access to the context where we are.

echo "docker-compose up -d && docker attach $(docker-compose ps -q web)"
docker-compose up -d && docker attach $(docker-compose ps -q web)

# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

require "pry" if ENV['RACK_ENV'] != 'production'
require "ffaker"
require "active_record"

require_relative "db/config.rb"
require_relative "server"

run App::Server
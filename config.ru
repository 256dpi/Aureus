require 'rubygems'
require 'bundler'
require 'combustion'

Combustion.initialize! :active_record, :action_controller, :action_view, :sprockets

run Combustion::Application

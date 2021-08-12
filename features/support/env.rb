require 'factory_bot'
require 'faker'
require 'httparty'
require 'rspec'
require 'cucumber'
require 'Nice_hash'
require 'json'

require_relative 'spec_helper/spec_rest'

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")

World(REST)
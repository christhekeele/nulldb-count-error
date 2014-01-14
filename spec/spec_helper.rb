ROOT_PATH ||= Pathname.new(File.expand_path("../..", __FILE__))

require File.expand_path("#{ROOT_PATH}/config/environment", __FILE__)
require 'pry'
require 'rspec/core'
require 'rspec/rails'
require 'nulldb_rspec'
require 'nulldb/rails'
include NullDB::RSpec::NullifiedDatabase
NullDB.configure do |config|
  config.project_root = ROOT_PATH
end

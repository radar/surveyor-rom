require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rom/sql/rake_task"
require "surveyor/rom"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :db do
  task :setup do
    ROM::SQL::RakeSupport.env = Surveyor::Import.container
  end
end


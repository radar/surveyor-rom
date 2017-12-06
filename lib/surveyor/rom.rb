require "dry/auto_inject"
require "rom/sql"
require "rom/repository"



configuration = ROM::Configuration.new(:sql, 'postgres://localhost/surveyor_experiment')
p File.expand_path(__dir__ + '/surveyor')
configuration.auto_registration(File.expand_path(__dir__))
container = ROM.container(configuration)

require 'pry'
binding.pry


Surveyor::Import = Dry::AutoInject(container)

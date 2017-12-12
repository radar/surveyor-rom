require "dry/auto_inject"
require "rom/sql"
require "rom/repository"


configuration = ROM::Configuration.new(:sql, 'postgres://localhost/surveyor_experiment')
configuration.auto_registration(File.expand_path(__dir__))
container = ROM.container(configuration)
Surveyor::Import = Dry::AutoInject(container)

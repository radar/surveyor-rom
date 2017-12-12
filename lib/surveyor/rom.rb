require "dry/auto_inject"
require "rom/sql"
require "rom/repository"
require "surveyor/repos/survey_repo"

configuration = ROM::Configuration.new(:sql, 'postgres://localhost/surveyor_experiment')
configuration.auto_registration(File.expand_path(__dir__))
container = ROM.container(configuration)

surveys_repo = Surveyor::Repos::SurveyRepo.new(container)

Surveyor::Application.register :surveys_repo, surveys_repo

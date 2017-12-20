Surveyor::Container.boot :rom, namespace: true do |app|
  init do
    require "rom"

    configuration = ROM::Configuration.new(:sql, 'postgres://localhost/surveyor_experiment')

    register(:configuration, configuration)
  end

  start do
    configuration = app['rom.configuration']

    configuration.auto_registration(app.root.join('lib/surveyor'), namespace: true)
    container = ROM.container(configuration)

    register :container, container

    require "surveyor/repository"
    require "surveyor/repos/survey_repo"
    surveys_repo = Surveyor::Repos::SurveyRepo.new(container)

    register :surveys_repo, surveys_repo
  end
end

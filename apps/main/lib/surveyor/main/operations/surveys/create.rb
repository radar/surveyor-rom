# frozen_string_literal: true

require 'surveyor/operation'

module Surveyor
  module Main
    module Operations
      module Surveys
        class Create < Surveyor::Operation
          include Import['rom.surveys_repo']

          def call(attrs)
            survey = surveys_repo.create(attrs)
            Right(survey)
          end
        end
      end
    end
  end
end

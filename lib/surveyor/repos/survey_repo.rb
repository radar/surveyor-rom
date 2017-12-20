require "surveyor/repository"

module Surveyor
  module Repos
    class SurveyRepo < Surveyor::Repository[:surveys]
      commands :create

      def by_id(id)
        surveys.by_pk(id).one!
      end
    end
  end
end

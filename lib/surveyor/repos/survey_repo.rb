module Surveyor
  module Repos
    class SurveyRepo < ROM::Repository[:surveys]
      def by_id(id)
        surveys.by_pk(id).one!
      end
    end
  end
end

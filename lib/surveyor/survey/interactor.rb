module Surveyor
  class Survey
    class Interactor
      attr_reader :repo

      def initialize(repo)
        @repo = repo
      end

      def create(attributes)
        @repo.create(attributes)
      end
    end
  end
end

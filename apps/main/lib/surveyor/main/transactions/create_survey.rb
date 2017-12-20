# frozen_string_literal: true

require 'surveyor/main/transaction'

module Surveyor
  module Main
    module Transactions
      class CreateSurvey < Transaction
        # step :validate, with: 'operations.tasks.validate'
        step :persist,  with: 'operations.surveys.create'
      end
    end
  end
end

module Surveyor
  module Relations
    class Surveys < ROM::Relation[:sql]
      schema(infer: true)
    end
  end
end


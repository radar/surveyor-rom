module Surveyor
  module Relations
    class Surveys < ROM::Relation[:sql]
      schema("surveys", infer: true)
    end
  end
end


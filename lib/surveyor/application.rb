require 'dry/system/container'

module Surveyor
  class Application < Dry::System::Container
  end
end

require "surveyor/rom"

Surveyor::Application.finalize!

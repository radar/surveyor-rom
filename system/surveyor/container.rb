require 'dry/system/container'
require 'dry/system/components'

module Surveyor
  class Container < Dry::System::Container
    configure do
      config.name = :surveyor
      config.default_namespace = 'surveyor'
      config.auto_register = %w[lib/surveyor]
    end

    load_paths! 'lib'
  end
end

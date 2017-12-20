require 'dry/system/container'
require 'dry/system/components'

module Surveyor
  module Main
    class Container < Dry::System::Container
      require root.join('system/surveyor/container')
      import core: Surveyor::Container

      configure do |config|
        config.root =
          Pathname(__FILE__).join('../../..').realpath.dirname.freeze
        config.default_namespace = 'surveyor.main'
        config.auto_register = %w[lib/surveyor/main]
      end

      load_paths! 'lib'
    end
  end
end

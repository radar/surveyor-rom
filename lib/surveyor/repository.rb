require 'rom-repository'
require 'surveyor/container'
require 'surveyor/import'

module Surveyor
  class Repository < ROM::Repository::Root
    include Import.args["rom.container"]
  end
end

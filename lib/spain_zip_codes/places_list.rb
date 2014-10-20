require 'yaml'

module SpainZipCodes
  class PlacesList
    attr_reader :list

    def initialize(file_path)
      source_yaml = File.expand_path(file_path, __FILE__)
      @list       = build_list(source_yaml)
    end

    def find_from_value(value)
      match = false

      @list.keys.each do |key|
        if @list[key].include?(value)
          match = key
          break
        end
      end

      match
    end

    def find_from_key(key)
      @list[key] || []
    end

    private

    def build_list(places_file)
      yaml = YAML.load_file(places_file)
      yaml['locations'] || yaml['provinces']
    end
  end
end

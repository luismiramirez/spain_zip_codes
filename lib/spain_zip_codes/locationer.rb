require 'yaml'

module SpainZipCodes
  class Locationer
    SOURCE_YAML = %w(lib spain_zip_codes data zip_locations_es.yml).join('/')
    LOCATIONS   = YAML.load_file(SOURCE_YAML)['locations']

    def self.to_location(zip)
      location = false

      LOCATIONS.keys.each do |key|
        if LOCATIONS[key].include?(zip)
          location = key
          break
        end
      end

      location
    end
  end
end

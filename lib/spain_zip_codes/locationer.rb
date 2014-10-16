require 'yaml'

# This class has duplicated code some way, but I prefer to keep the methods
# separated even if they are the same so they are easier to change in the future

module SpainZipCodes
  class Locationer
    SOURCE_YAML = File.expand_path('../data/zip_locations_es.yml', __FILE__)
    LOCATIONS   = YAML.load_file(SOURCE_YAML)['locations']
    SLUGS_YAML  = File.expand_path('../data/slug_locations_es.yml', __FILE__)
    SLUGS_LOCS  = YAML.load_file(SLUGS_YAML)['locations']

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

    def self.to_zip(location)
      LOCATIONS[location] || []
    end

    def self.slug_to_zip(location_slug)
      SLUGS_LOCS[location_slug] || []
    end

    def self.zip_to_slug(zip)
      slug = false

      SLUGS_LOCS.keys.each do |key|
        if SLUGS_LOCS[key].include?(zip)
          slug = key
          break
        end
      end

      slug
    end
  end
end

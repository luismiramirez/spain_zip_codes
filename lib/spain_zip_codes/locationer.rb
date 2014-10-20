module SpainZipCodes
  class Locationer
    LOCATIONS   = PlacesList.new('../data/zip_locations_es.yml')
    SLUGS_LOCS  = PlacesList.new('../data/slug_locations_es.yml')

    def self.to_location(zip)
      LOCATIONS.find_from_value(zip)
    end

    def self.to_zip(location)
      LOCATIONS.find_from_key(location)
    end

    def self.slug_to_zip(location_slug)
      SLUGS_LOCS.find_from_key(location_slug)
    end

    def self.zip_to_slug(zip)
      SLUGS_LOCS.find_from_value(zip)
    end
  end
end

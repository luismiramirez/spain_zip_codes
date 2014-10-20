module SpainZipCodes
  class Provincer
    PROVINCES = PlacesList.new('../data/zip_provinces_es.yml')

    def self.to_province(zip)
      return false unless zip.is_a?(String) && zip.length == 5

      truncated_zip = zip[0, 2]
      PROVINCES.find_from_key(truncated_zip)
    end

    def self.to_zip(province)
      zip_prefix = PROVINCES.list.key(province)
      return false unless province.length > 0
      zip_prefix
    end
  end
end

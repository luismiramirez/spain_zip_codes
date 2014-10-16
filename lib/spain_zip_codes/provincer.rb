require 'yaml'

module SpainZipCodes
  class Provincer
    SOURCE_YAML = File.expand_path('../data/zip_provinces_es.yml', __FILE__)
    PROVINCES   = YAML.load_file(SOURCE_YAML).fetch('provinces')

    def self.to_province(zip)
      return false unless zip.is_a?(String) && zip.length == 5

      truncated_zip = zip[0, 2]
      PROVINCES[truncated_zip]
    end

    def self.to_zip(province)
      zip_prefix = PROVINCES.key(province)
      return false unless province.length > 0
      zip_prefix
    end
  end
end

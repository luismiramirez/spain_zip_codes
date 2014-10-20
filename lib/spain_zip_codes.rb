require 'spain_zip_codes/version'
require 'spain_zip_codes/places_list'
require 'spain_zip_codes/provincer'
require 'spain_zip_codes/locationer'

module SpainZipCodes
  def self.zip_to_province(zip)
    Provincer.to_province(zip)
  end

  def self.province_to_zip(province)
    Provincer.to_zip(province)
  end

  def self.zip_to_location(zip)
    Locationer.to_location(zip)
  end

  def self.location_to_zip(location)
    Locationer.to_zip(location)
  end

  def self.location_slug_to_zip(location_slug)
    Locationer.slug_to_zip(location_slug)
  end

  def self.zip_to_location_slug(zip)
    Locationer.zip_to_slug(zip)
  end
end

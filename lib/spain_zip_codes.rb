require 'spain_zip_codes/version'
require 'spain_zip_codes/provincer'

module SpainZipCodes
  def self.zip_to_province(zip)
    Provincer.to_province(zip)
  end

  def self.province_to_zip(province)
    Provincer.to_zip(province)
  end
end

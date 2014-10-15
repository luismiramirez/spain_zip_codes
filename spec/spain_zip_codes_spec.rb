require 'spec_helper'

describe 'SpainZipCodes' do
  before(:each) do
    @provincer  = SpainZipCodes::Provincer
    @locationer = SpainZipCodes::Locationer
  end

  describe '#zip_to_province' do
    it 'calls Provincer#to_province with params' do
      zip = '28047'

      expect(@provincer).to receive(:to_province).with(zip)

      SpainZipCodes.zip_to_province(zip)
    end
  end

  describe '#province_to_zip' do
    it 'calls Provincer#to_zip with params' do
      province = 'Madrid'

      expect(@provincer).to receive(:to_zip).with(province)

      SpainZipCodes.province_to_zip(province)
    end
  end

  describe '#zip_to_location' do
    it 'calls Locationer#to_zip with params' do
      zip = '28047'

      expect(@locationer).to receive(:to_location).with(zip)

      SpainZipCodes.zip_to_location(zip)
    end
  end
end

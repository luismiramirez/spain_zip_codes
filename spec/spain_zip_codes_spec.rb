require 'spec_helper'

describe 'SpainZipCodes' do
  before(:each) do
    @provincer = SpainZipCodes::Provincer
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
end

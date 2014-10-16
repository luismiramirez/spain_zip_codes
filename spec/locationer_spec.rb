require 'spec_helper'

describe 'Locationer' do
  before(:each) do
    @locationer = SpainZipCodes::Locationer
  end

  describe '#to_location' do
    context 'with existing zip code' do
      it 'returns the correct location' do
        expect(@locationer.to_location('28922')).to eq('Alcorcón')
      end
    end

    context 'with integer zip code' do
      it 'returns false' do
        expect(@locationer.to_location(22244)).to be false
      end
    end

    context 'with unexisting zip code' do
      it 'returns false' do
        expect(@locationer.to_location(222999)).to be false
      end
    end
  end

  describe '#to_zip' do
    context 'with existing location' do
      it 'returns an array of zip codes' do
        expected_result = %w(28920 28921 28922 28923 28924 28925)

        expect(@locationer.to_zip('Alcorcón')).to eq(expected_result)
      end
    end

    context 'with unexisting location' do
      it 'returns an empty array' do
        expect(@locationer.to_zip('Jamón Serrano')).to eq([])
      end
    end
  end

  describe '#slug_to_zip' do
    context 'with existing slug' do
      it 'returns an array of zip codes' do
        expected_result = %w(28920 28921 28922 28923 28924 28925)

        expect(@locationer.slug_to_zip('alcorcon')).to eq(expected_result)
      end
    end

    context 'with unexisting slug' do
      it 'returns an empty array' do
        expect(@locationer.slug_to_zip('el-tiroriro')).to eq([])
      end
    end
  end

  describe '#zip_to_slug' do
    context 'with existing zip code' do
      it 'returns the correct slug' do
        expect(@locationer.zip_to_slug('28922')).to eq('alcorcon')
      end
    end

    context 'with integer zip code' do
      it 'returns false' do
        expect(@locationer.zip_to_slug(66998)).to be false
      end
    end

    context 'with unexisting zip code' do
      it 'returns false' do
        expect(@locationer.zip_to_slug('6969699')).to be false
      end
    end
  end
end

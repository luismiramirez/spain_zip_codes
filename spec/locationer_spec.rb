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
end

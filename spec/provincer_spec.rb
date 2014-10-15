require 'spec_helper'

describe 'Provincer' do
  before(:each) do
    @provincer = SpainZipCodes::Provincer
  end

  describe '#to_province' do
    context 'with existing zip code' do
      it 'returns the correct province' do
        expect(@provincer.to_province('28047')).to eq('Madrid')
        expect(@provincer.to_province('08033')).to eq('Barcelona')
      end
    end

    context 'with integer zip code' do
      it 'returns false' do
        expect(@provincer.to_province(28047)).to be false
      end
    end

    context 'with unexisting string zip code' do
      it 'returns false' do
        expect(@provincer.to_province(975890)).to be false
      end
    end
  end

  describe '#to_zip' do
    context 'with existing province' do
      it 'returns the correct zip prefix' do
        expect(@provincer.to_zip('Madrid')).to eq('28')
      end
    end

    context 'with unexisting province' do
      it 'returns false' do
        expect(@provincer.to_province('Gallifrey')).to be false
      end
    end
  end
end

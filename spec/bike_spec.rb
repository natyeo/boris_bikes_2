require 'docking_station.rb'

describe Bike do

  describe '#working?' do
    it 'checks bike works' do
      bike = Bike.new
      expect(bike).to be_working
    end
  end
end

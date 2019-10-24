require 'docking_station.rb'

describe DockingStation do

  context 'when initialized' do
    it 'has default capacity of 20 bikes' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error("no bikes available")
    end

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#dock' do
    it 'raises an error if more than 20 bikes docked' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error("Docking station full")
    end

    it 'shows docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.show_docked_bikes).to include(bike)
    end
   end
end

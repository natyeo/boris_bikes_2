require 'docking_station.rb'

describe DockingStation do
  let(:bike) { Bike.new }

  context 'when initialized' do
    it 'has default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    it '#release_bike raises an error as there are no bikes available' do
      expect { subject.release_bike }.to raise_error("no bikes available")
    end
  end

  context 'when bike docked' do
    before do
      subject.dock(bike)
    end

    it '#release_bike releases a working bike' do
      expect(subject.release_bike).to eq bike
    end

    it '#release_bike does not release broken bikes' do
      bike2 = Bike.new
      bike2.report_broken
      subject.dock(bike2)
      expect(subject.release_bike).to eq bike
    end

    it '#dock shows docked bikes' do
      expect(subject.show_docked_bikes).to include(bike)
    end
  end

  context 'when capacity reached' do
    it '#dock raises an error' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error("Docking station full")
    end
  end
end

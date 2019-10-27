require 'docking_station.rb'

describe DockingStation do
  let(:bike) { double :bike }

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
      allow(bike).to receive(:working?).and_return(true)
      subject.dock(bike)
    end

    it '#release_bike does not release broken bikes' do
      subject.dock(double(:bike, working?: false))
      expect(subject.release_bike).to eq bike
    end

    it '#show_docked_bikes includes broken bikes' do
      broken_bike = double(:bike, working?: false)
      subject.dock(broken_bike)
      expect(subject.show_docked_bikes).to include(broken_bike)
    end
  end

  it '#release_bike raises error if only broken bike docked' do
    subject.dock(double(:bike, working?: false))
    expect { subject.release_bike }.to raise_error "no bikes available"
  end

  context 'when capacity reached' do
    it '#dock raises an error' do
      subject.capacity.times { subject.dock(double :bike) }
      expect { subject.dock(double :bike) }.to raise_error("Docking station full")
    end
  end
end

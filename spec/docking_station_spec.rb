require 'docking_station.rb'

describe DockingStation do

  # it "it responds to release_bike" do
  #   station = DockingStation.new
  #   expect(station.release_bike).to eq ()
  # end

  # it "it responds to release_bike" do
  #   expect(DockingStation.new).to respond_to :release_bike
  # end

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'to dock a bike' do
    bike1 = Bike.new
    subject.dock(bike1)
    expect(subject.dock(bike1)).to eq bike1
  end

  it { is_expected.to respond_to :show_docked_bikes }

  it 'shows docked bikes' do
    bike2 = Bike.new
    subject.dock(bike2)
    expect(subject.show_docked_bikes).to eq bike2
  end

end

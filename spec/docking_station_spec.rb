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

end

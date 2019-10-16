require 'docking_station.rb'

describe Bike do

  # it "it responds to working?" do
  #   expect(Bike.new).to respond_to :working?
  # end

  it { is_expected.to respond_to :working? }

end

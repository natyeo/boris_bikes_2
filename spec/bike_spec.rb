require 'bike.rb'

describe Bike do
let(:bike) { described_class.new }

  describe '#working?' do
    it 'bike is working when initialized' do
      expect(bike).to be_working
    end
  end

  describe '#report_broken' do
    it 'changes status of working' do
      bike.report_broken
      expect(bike.working?).to eq false
    end
  end
end

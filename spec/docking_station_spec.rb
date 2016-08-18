require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases working bikes' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end
end

  describe "no bikes available" do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
  it 'raises an error when the dock is full' do
    subject.capacity.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error 'Docking Station full'
    end
  end

  describe "dock capacity" do
    it "sets dock capacity" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  describe 'initialization' do
    bike = Bike.new
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking Station full'
    end
  end
end

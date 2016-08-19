require 'docking_station'

describe DockingStation do

  let(:bike) {double :bike}
  let(:broken_bike) {double :double_bike}

before(:each) do
  allow(bike).to receive(:working?).and_return(true)
  allow(broken_bike).to receive(:working?).and_return(false)
end

  describe '#release_bike' do
    it 'releases working bikes' do
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  it 'does not release broken bikes' do
    subject.dock(broken_bike)
    expect(subject.release_bike).to eq 'sorry bike broken'
  end
end

  describe "no bikes available" do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
  it 'raises an error when the dock is full' do
    subject.capacity.times { subject.dock(bike) }
    expect { subject.dock(bike) }.to raise_error 'Docking Station full'
    end
  end

  describe "dock capacity" do
    it "sets dock capacity" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end


  describe 'initialization' do
    subject { DockingStation.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking Station full'
    end
  end
end

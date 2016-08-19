require 'garage.rb'
require 'van'
require 'bike'

describe Garage do

  let(:broken_bike) {double :broken_bike}
  let(:van) {double :van}

  before(:each) do
    allow(van).to receive(:pickup_broken_bikes).and_return([])
    allow(van).to receive(:van_bikes).and_return([broken_bike,broken_bike])
    allow(broken_bike).to receive(:working?).and_return(false)
  end


  it 'takes all broken bikes from a van' do
    subject.pickup_broken_bikes(van)
    expect(subject.garage_bike).to eq([broken_bike,broken_bike])
  end

  it 'fixes broken bikes' do
    expect(broken_bike).to be_working
  end
end

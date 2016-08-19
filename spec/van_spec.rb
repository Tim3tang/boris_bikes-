require 'bike'
require 'docking_station'
require 'van'

  describe Van do
    it 'accepts broken bikes from dock' do
    docking_station = DockingStation.new
    working_bike = Bike.new
    broken_bike = Bike.new
    broken_bike.be_broken
    docking_station.dock(working_bike)
    docking_station.dock(broken_bike)
    subject.pickup_broken_bikes(docking_station)
    expect(subject.van_bikes).to eq [broken_bike]
    end


  
  end

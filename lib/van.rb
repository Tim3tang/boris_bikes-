require 'bike'
require 'docking_station'

class Van
  attr_reader :van_bikes

  def initialize
    @van_bikes = []
  end

  def pickup_broken_bikes(docking_station)
    station_bikes = docking_station.bikes

    station_bikes.each do |bike|
      if bike.working? == false
        @van_bikes << bike
      end
    end
  end

end

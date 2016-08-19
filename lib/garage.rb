require 'van.rb'
require 'bike'

class Garage
  attr_reader :garage_bikes
  def initialize
    @garage_bikes = []

  end

  def pickup_broken_bikes(van)



    van.van_bikes.each do |bike|
      if bike.working? == false
        @garage_bikes << bike
      end
    end
  end

end

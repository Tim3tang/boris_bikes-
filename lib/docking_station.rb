require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking Station full' if full?
    @bikes << bike
  end

  attr_reader :bike

private
  def full?
    @bikes.count >=20
  end

  def empty?
    @bikes.empty?
  end
end

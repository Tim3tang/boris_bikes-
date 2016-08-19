require_relative 'bike.rb'

class DockingStation
  attr_accessor :capacity
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    @bikes
     if @bikes.empty?
       fail 'No bikes available'
     else
       @bikes.each do |bike|
         if bike.working?
           return bike
         end
     end
      return 'sorry bike broken'
     end
  end

  def dock(bike)
    fail 'Docking Station full' if full?
    @bikes << bike
  end


  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end

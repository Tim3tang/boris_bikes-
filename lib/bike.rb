require 'docking_station'

class Bike
  def initialize
    @working = true
  end

  def working?
    @working
  end

  def be_broken
    @working = false
  end

  def be_working
    @working = true
  end
end
# describe 'bike working' do
#   it 'initialize a working bike by default' do
#
#     bike.working?
#     expect(bike.working?).to be true
#   end
#
#   it 'detects a broken bike' do
#     expect(broken_bike.working?).to be false
#   end
#
#   it 'sets repaired bikes to working' do
#     broken_bike
#     bike.be_working
#     expect(bike.be_working).to eq true
#   end

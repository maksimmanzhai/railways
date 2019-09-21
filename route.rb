class Route
  attr_reader :list_of_stations, :start, :finish

  def initialize(start, finish)
    @start = start
    @finish = finish
    @list_of_stations = []
    @list_of_stations << @start
    @list_of_stations << @finish
  end

  def add_station(station)
    @list_of_stations.insert(-2, station)
  end

  def delete_station(station)
    @list_of_stations.reject! {|a| a == station}
  end

  def list_of_stations
    puts @list_of_stations
  end

end

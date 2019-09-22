# frozen_string_literal: true

# class route
class Route
  attr_reader :list_of_stations, :start, :finish

  def initialize(start, finish)
    @start = start
    @finish = finish
    @list_of_stations = [start, finish]
  end

  def add_station(station)
    @list_of_stations.insert(-2, station)
  end

  def delete_station(station)
    @list_of_stations.delete(station) if (station != @start) && (station != @finish)
  end

  def show_list_of_stations
    @list_of_stations.each do |station|
      puts station
    end
  end
end

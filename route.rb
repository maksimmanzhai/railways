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
    return if [start, finish].include?(station)
    @list_of_stations.delete(station)
  end

  def show_list_of_station
    puts @list_of_stations
  end
end

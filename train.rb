# frozen_string_literal: true

# class train
class Train
  attr_reader :number, :type, :carriage_count, :speed

  def initialize(number, type, carriage_count)
    @number = number
    @type = type
    @carriage_count = carriage_count
    @speed = 0
  end

  def up_speed(arg)
    @speed += arg
  end

  def stop
    @speed = 0
  end

  def coupling_carriages
    @carriage_count += 1 if @speed.zero?
  end

  def uncoupling_carriages
    @carriage_count -= 1 if @speed.zero? && @carriage_count > 0
  end

  def route=(route)
    @route = route
    @current_station_index = 0
    @start = @route.start
  end

  def move_forward
    @route.list_of_stations[@current_station_index].leaving_train(self)
    @current_station_index += 1 if next_station.nil?
    @route.list_of_stations[@current_station_index]
  end

  def move_back
    @route.list_of_stations[@current_station_index].leaving_train(self)
    @current_station_index -= 1 if previous_station.nil?
    @route.list_of_stations[@current_station_index]
  end

  def previous_station
    if @current_station_index > 0
      return @route.list_of_stations[@current_station_index - 1]
    end
  end

  def current_station
    return @route.list_of_stations[@current_station_index]
  end

  def next_station
    if @current_station_index < @route.list_of_stations.size
      return @route.list_of_stations[@current_station_index + 1]
    end
  end
end

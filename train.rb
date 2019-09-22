# frozen_string_literal: true

# class train
class Train
  attr_reader :number, :type, :carriage_count, :speed

  def initialize(number, type, carriage_count)
    @number = number
    @type = type
    @carriage_count = carriage_count
    @speed = 0
    @index = 0
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

  def routing(route)
    @route = route
  end

  def starting_station(station)
    @station = station
    @current_station = station
  end

  def move_forward
    @station.leaving_train(self)
    @index += 1
    @current_station = @route.list_of_stations[@index]
  end

  def move_back
    @station.leaving_train(self)
    @index -= 1
    @current_station = @route.list_of_stations[@index]
  end

  def previous_station
    if @index > 0
      puts "previous station: #{@route.list_of_stations[@index - 1]}"
    end
  end

  def current_station
    puts "current station: #{@current_station}"
  end

  def next_station
    if @index < @route.list_of_stations.size
      puts "next station: #{@route.list_of_stations[@index + 1]}"
    end
  end
end

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

  def up_speed
    @speed += 10
  end

  def show_speed
    puts @speed
  end

  def brake_speed
    @speed = 0
  end

  def show_carriage_count
    puts @carriage_count
  end

  def coupling_carriages
    @carriage_count += 1 if @speed.zero?
  end

  def uncoupling_carriages
    @carriage_count -= 1 if @speed.zero?
  end

  def routing(route)
    @route = route
  end

  def starting_station
    @index = 0
    @start = @route.list_of_stations[@index]
    @current_station = @start
    @next_station = @route.list_of_stations[@index + 1]
    puts @start
  end

  def move(arg)
    @previous_station = @current_station
    @index += arg
    @current_station = @route.list_of_stations[@index]
    @next_station = @route.list_of_stations[@index + 1]
  end

  def return_stations
    puts "previous station: #{@previous_station}"
    puts "current station: #{@current_station}"
    puts "next station: #{@next_station}"
  end
end

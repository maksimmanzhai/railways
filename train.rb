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
    @carriage_count += 1 if @speed == 0
  end

  def uncoupling_carriages
    @carriage_count -= 1 if @speed == 0
  end
  
  def routing(route)
    @route = route
  end
  
  def starting_station
    @list_of_stations
  end

  def move_forward
    
  end

  def move_back
    
  end

  def return_station # Возвращать предыдущую станцию, текущую, следующую, на основе маршрута
    previous_station = nil
    current_station = nil
    next_station = nil
  end

end

class Station
  attr_reader :trains

  def initialize(name)
    @name = name
    @trains = {}
    puts "Station #{name} is greate"
  end

  def arriving_train(train)
    @trains[train.number] = { type: train.type, carriage_count: train.carriage_count }
    puts "train #{train.number} is arriving to station #{@name}"
  end

  def show_trains
    puts "Station #{@name}: #{@trains}"
  end

  def show_type_of_trains
    types = []
    @trains.each_value do |value|
      types << value[:type]
    end
    counts = Hash.new 0
    types.each do |type|
      counts[type] += 1
    end
    puts counts
  end

  def leaving_train(train)
    @trains.delete(train.number)
    puts "Train #{train.number} is left station #{@name}"
  end

end

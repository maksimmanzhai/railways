# frozen_string_literal: true

# class station
class Station
  attr_reader :trains

  def initialize(name)
    @name = name
    @trains = {}
  end

  def add_train(train)
    @trains[train.number] = train
  end

  def show_type_of_trains(type)
    count = 0
    @trains.select do |train, value|
      if value.type == type
        count += 1
      end
    end
    return count
  end

  def leaving_train(train)
    @trains.delete(train.number)
  end
end

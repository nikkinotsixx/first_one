class Train
  attr_reader :number, :type, :wagons, :speed, :route

  def initialize (number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
    @route = nil
  end

  def acceleration(speed_up)
    @speed += speed_up
  end

  def stop
    @speed = 0
  end

  def add_wagon
    @wagons += 1 if speed == 0
  end

  def remove_wagon
    return if wagons == 0
    @wagons -= 1 if speed == 0
  end

  def new_route(route)
    @route = route
    @route.stations[0].add_train(self)
  end

  def current_station
    @location = 0
    @route.stations[@location]
  end

  def move_forward
    if next_station
      location.remove_train(self)
      location += 1
      next_station.add_train(self)
    end
  end

  def move_forward
    if next_station
      location.remove_train(self)
      location -= 1
      previous_station.add_train(self)
    end
  end

  def next_station
    @route.stations[@location + 1]
  end

  def previous_station
    @route.stations[@location - 1] unless @location.zero?
  end
end

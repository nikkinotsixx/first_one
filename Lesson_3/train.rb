class Train
  attr_reader :number, :type, :wagons, :speed, :route

  def initialize (number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
    @route = nil
  end

  def acceleration(speed)
    @speed += speed
  end

  def slowdown(speed)
    if @speed - speed > 0
      @speed -= speed
    else
      @speed = 0
    end
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
    @location = 0
    @route.stations[0].add_train(self)
  end

  def current_station
    @route.stations[@location]
  end

  def move_forward
    return if next_station.nil?
      current_station.remove_train(self)
      next_station.add_train(self)
      @location += 1
  end

  def move_backward
    return if previous_station.nil?
      current_station.remove_train(self)
      previous_station.add_train(self)
      @location -= 1
  end

  def next_station
    @route.stations[@location + 1]
  end

  def previous_station
    @route.stations[@location - 1] unless @location.zero?
  end
end

class Route
  attr_reader :station

  def initialize(initial_station, final_station)
    @stations = [initial_station, final_station]
  end

  def add_station
    @stations.insert(-2, station)
  end

  def remove_station
    @stations.delete(station)
  end

  def show_stations
    @stations.each { |station| puts station.name}
  end
end

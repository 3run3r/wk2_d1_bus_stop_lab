class Bus

  attr_reader :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def number_of_passengers
    return @passengers.length
  end

  def pick_up(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty()
    @passengers.clear
  end

  def pick_up_all_from_queue(bus_stop)
    bus_stop = find_bus_stop_by_name(name)
    for passenger in bus_stop.queue
      @passengers.push(passenger)
    end
  end

end

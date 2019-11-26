class BusStop

  attr_reader(:name, :queue)

  def initialize(name)
    @name = name
    @queue = []
  end

  def queue_length
    @queue.length
  end

  def add_person(person)
    @queue.push(person)
  end

  def find_bus_stop_by_name(name)
    if name == @bus_stop.name
      return @bus_stop
    end
  end

end

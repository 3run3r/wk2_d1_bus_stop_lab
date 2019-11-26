require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')
require_relative('../bus_stop')

class BusStopTest < Minitest::Test

  def setup
    @person = Person.new("Julia", 47)
    @bus_stop = BusStop.new("Castle Terrace")
  end

  def test_can_get_bus_stop_name
    assert_equal("Castle Terrace", @bus_stop.name)
  end

  def test_queue_starts_at_zero
    assert_equal(0, @bus_stop.queue_length)
  end

  def test_can_add_person_to_queue
    @bus_stop.add_person(@person)
    assert_equal(1, @bus_stop.queue_length)
  end

end

require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus_stop')
require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(44, "Balerno")
    @person = Person.new("John", 35)
    @bus_stop = BusStop.new("Castle Terrace")
  end

  def test_can_get_route_number
    assert_equal(44, @bus.route_number)
  end

  def test_can_get_destination
    assert_equal("Balerno", @bus.destination)
  end

  def test_number_of_passenger_starts_at_zero
    assert_equal(0, @bus.number_of_passengers)
  end

  def test_can_pick_up_person
    @bus.pick_up(@person)
    assert_equal(1, @bus.number_of_passengers)
  end

  def test_can_drop_off_passenger
    @bus.pick_up(@person)
    @bus.drop_off(@person)
    assert_equal(0, @bus.number_of_passengers)
  end

  def test_can_drop_off_all_passengers
    @bus.pick_up(@person)
    @bus.pick_up(@person)
    @bus.pick_up(@person)
    @bus.empty
    assert_equal(0, @bus.number_of_passengers)
  end

  def test_can_pick_up_all_from_bus_stop_queue
    @bus_stop.add_person(@person)
    @bus.pick_up_all_from_queue(@bus_stop)
    assert_equal(0, @bus_stop.queue_length)
    assert_equal(1, @bus.number_of_passengers)
  end


end

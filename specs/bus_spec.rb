require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(44, "Balerno")
  end

  def test_can_get_route_number
    assert_equal(44, @bus.route_number)
  end

  def test_can_get_destination
    assert_equal("Balerno", @bus.destination)
  end

end

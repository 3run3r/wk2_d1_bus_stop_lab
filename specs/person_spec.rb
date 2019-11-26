require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')

class PersonTest < Minitest::Test

 def setup
   @person = Person.new("John", 35)
 end

 def test_can_get_person_name
   assert_equal("John", @person.name)
 end

 def test_can_get_person_age
   assert_equal(35, @person.age)
 end


end

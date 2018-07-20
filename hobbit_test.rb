#gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'hobbit'

class HobbitTest < Minitest::Test
  def test_it_has_a_name
    hobbit = Hobbit.new("Bilbo")
    assert_equal "Bilbo", hobbit.name
  end

  def test_it_is_named_something_else
    hobbit = Hobbit.new("Peregrin")
    assert_equal "Peregrin", hobbit.name
  end

  def test_disposition_is_unadventurous
    hobbit = Hobbit.new("Samwise")
    assert_equal "homebody", hobbit.disposition
  end

  def test_can_have_a_different_disposition
    hobbit = Hobbit.new("Frodo", "adventurous")
    assert_equal "adventurous", hobbit.disposition
  end

  def test_grows_older_when_celebrating_birthdays
    hobbit = Hobbit.new('Meriadoc')
    assert_equal 0, hobbit.age
    5.times do
      hobbit.celebrate_birthday
    end
    assert_equal 5, hobbit.age
  end

  def test_is_considered_a_child_at_32
    hobbit = Hobbit.new('Gerontius')
    32.times do
      hobbit.celebrate_birthday
    end
    refute hobbit.adult?
  end

  def test_comes_of_age_at_33

    hobbit = Hobbit.new('Otho')
    33.times do
      hobbit.celebrate_birthday
    end
    assert hobbit.adult?

    # still adult, one year later
    hobbit.celebrate_birthday
    assert hobbit.adult?
  end

  def test_is_old_at_age_of_101
    hobbit = Hobbit.new('Ruth')
    101.times do
    hobbit.celebrate_birthday
   end
    # have hobbit age 101 years
    assert hobbit.old?
    # check that hobbit.old? returns true
  end

  def test_hobbit_has_the_ring_if_its_name_is_frodo
    frodo_hobbit = Hobbit.new('Frodo')
    sam_hobbit = Hobbit.new('Sam')
    # check that .has_ring? for Frodo returns true
    # use assert - that will return true aka passes test if true
    assert frodo_hobbit.has_ring?
    # check that .has_ring? for Sam returns false
    #use refute - that will return false aka passes test if result is false
    refute sam_hobbit.has_ring?
  end

  def test_hobbits_are_short
    shawty_hobbit = Hobbit.new('shorty')
    assert shawty_hobbit.is_short?
  end

  def test_hobbit_knows_basic_math
    shawty_hobbit = Hobbit.new('shorty')
    assert 4, shawty_hobbit.two_plus_two
  end

  def test_how_many_meals_hobbit_has_eaten
    shawty_hobbit = Hobbit.new('shorty')
    assert_equal "second breakfast", shawty_hobbit.elevenses
  end


end

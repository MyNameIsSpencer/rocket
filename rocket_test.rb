require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def setup
    options = {name: "Rocketeer", colour: "blue", flying: true}
    @rocketman = Rocket.new(options)
    @vanilla_rocket = Rocket.new
  end

  def teardown
    @rocketman = nil
    @vanilla_rocket = nil
  end

  # Write your tests here!
  def test_initialize_name
    assert_equal "Rocketeer", @rocketman.name
  end

  def test_no_name_given_initialize_name_result
    refute_equal @vanilla_rocket.name, @rocketman.name
  end

  def test_random_name_2
    assert @vanilla_rocket.name
  end

  def test_initialize_colour
    assert_equal "blue", @rocketman.colour
  end

  def test_random_colour
    assert @vanilla_rocket.colour
  end

  def test_flying_is_true
    assert_equal true, @rocketman.flying?
  end

  def test_flying_is_default_false
    refute_equal true, @vanilla_rocket.flying?
  end

  def test_lift_off_is_false_if_already_flying
    assert_equal false, @rocketman.lift_off
  end

  def test_lift_off_is_true_if_not_flying
    assert_equal true, @vanilla_rocket.lift_off
  end

  def test_land_if_currently_flying
    assert_equal true, @rocketman.land
  end

  def test_land_if_currently_flying
    assert_equal false, @vanilla_rocket.land
  end

  def test_status_flying
    assert_equal "Rocket Rocketeer is flying through the sky!", @rocketman.status
  end

  def test_status_grounded
    assert_equal "Rocket #{@vanilla_rocket.name} is ready for lift off!", @vanilla_rocket.status
  end


  # def
  # end



  # def test_initialize_colour
  #   skip
  #
  # end

end

# Learning how to run tests.

require "minitest/autorun"

class Robot
  def can_we_play?
    "Yes, please!"
  end

  def move_hands
    "Wave hands."
  end

  def sum(a, b)
    a + b
  end
end

# Specs

describe Robot do
  before do
    @robot = Robot.new
  end

  describe "when asked can we play" do
    it "must play with me" do
      @robot.can_we_play?.must_equal "Yes, please!"
    end
  end

  describe "when asked to help me count" do
    it "must give me the answer to life" do
      @robot.sum(21, 21).must_equal 42
    end
  end
end

# Unit tests

class TestRobot < Minitest::Test
  def setup
    @robot = Robot.new
  end

  def test_can_we_play?
    assert_equal "Yes, please!", @robot.can_we_play?
  end

  def test_move_hands
    assert_equal "Wave hands.", @robot.move_hands
  end

  def test_sum
    assert_equal 42, @robot.sum(21, 21)
  end

  def test_that_will_be_skipped
    skip "Test this later."
  end
end

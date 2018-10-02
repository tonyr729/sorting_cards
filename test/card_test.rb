require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

# So this is sort of nitpicking at this stage but it will save you later on.
# A common stylistic part of ruby testing is to have all of your relevant variables defined up at the top.
# This way, they can be changed easily, stay consistent throughout your tests, aren't susceptible to typos etc.
# You're nearly there with the setup method, it can just be taken a step further.
# Also, this isn't a universal thing, but it's something a lot of pretty decent people do.

class CardTest < Minitest::Test
  def setup
    @value = "Ace"
    @suit = "Spades"
    @card = Card.new(@value, @suit)
  end

  def test_it_exists
    assert_instance_of Card, @card
  end

  def test_it_has_a_value
    assert_equal @value, @card.value
  end

  def test_it_has_a_suit
    assert_equal @suit, @card.suit
  end
end

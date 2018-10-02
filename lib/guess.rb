class Guess
  attr_reader :response, :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    response_list = @response.split(" ")
  
    response_list[0] == card.value &&
    response_list[2] == card.suit

    # This is totally uneccesary here, but if you're looking for a challenge, make this method using regex so that
    # it could respond to non normalized strings, eg "The Ace of Spades", instead of "Ace of Spades"
  end

  def feedback
    if self.correct?
      "Correct!"
    else
      "Incorrect."
    end
    # Try writing this in a ternary, some ruby people don't like them, but it's good to know anyway
  end
end

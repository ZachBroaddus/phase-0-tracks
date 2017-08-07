require_relative 'game'

describe WordGame do
  let(:game) { WordGame.new("unicorn") }

  it "matches user guess with letter(s) in original word" do
    expect(game.letter_match("n")).to eq ["_", "n", "_", "_", "_", "_", "n"]
  end

  it "adds to history log of user guesses" do
    expect(game.update_guess_log("n")).to eq ["n"]
  end

  it "checks to see if the user has re-entered a previously entered guess" do
    expect(game.repeat_guess("n")).to eq 6
  end

   it "checks to see if the user won the game" do
    expect(game.won_game?("n")).to eq false
  end 

  it "returns the appropriate parting message" do
  	expect(game.parting_message(true)).to eq "Congratulations, you won!"
  end
end
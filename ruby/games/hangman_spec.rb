# our word-guessing game should ...
# initialize an instance and return a string(secret_word), an integer (secret_word.length), and another string (word length with "__")
# pass a string thru word_guesser and check if it is contained in secret_word
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

    require_relative 'hangman'

    describe Hangman do
      let(:word)  { Hangman.new("hello") }

      it "stores the word given on initiazation" do
      	expect(word.secret_word).to eq["hello"]
    end

      it "stores the length of the secret word" do
      	expect(word.guesses).to eq[5]
      end

end

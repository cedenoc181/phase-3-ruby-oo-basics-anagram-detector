# Your code goes here!
require "pry"

class Anagram

attr_accessor :word


def initialize(word)

@word = word

end 

def match(array)
   array.select{ |str| str.split("").sort == @word.split("").sort}
end

end

book = Anagram.new "book"
ba = Anagram.new "ba"
book.match(%w[enlists google inlets banana])
ba.match(%w['ab abc bac'])


binding.pry
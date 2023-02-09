class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(possible_anagrams)
    possible_anagrams.select do |possible_anagram|
      sorted_word = @word.chars.sort.join
      sorted_possible_anagram = possible_anagram.downcase.chars.sort.join
      sorted_word == sorted_possible_anagram && @word != possible_anagram.downcase
    end
  end
end

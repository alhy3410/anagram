class String
  define_method(:anagram) do |other_words|
    original = self
    first_word = self.split('')
    second_word = other_words.split()
    results = []
    second_word.each() do |word|
      word_list = word.split('')
      word_check = word_list.sort()
       if first_word.sort().eql?(word_check.sort())
       anagram = word_list.join()
       results.push(original.concat(" is an anagram of ").concat(anagram))
      else
       "these words aren't an anagram"
      end
     end
     final_results = results.join()
     final_results
   end
end

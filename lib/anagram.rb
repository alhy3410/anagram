class String
  define_method(:anagram) do |words_to_check|
    first_word = self.split('')
    words_to_check.gsub!(/[,]/, '').to_s
    second_word = words_to_check.split()
    results = []
    anagram = []
    final_results = ""


    second_word.each() do |word|
      word_list = word.split('').sort()
      # word_check = word_list.sort()
       if first_word.sort().eql?(word_list)
       anagram.push(word)
      else
       "these words aren't an anagram"
      end
       if anagram.length.>(1)
         final_results = anagram.join(' ').concat(" are anagrams of ").concat(self)
       else
         final_results = anagram.join().concat(" is an anagram of ").concat(self)
       end
     end
     final_results

   end
end
#
# gsub!(/[,]/, '')

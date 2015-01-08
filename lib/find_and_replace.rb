class String
  define_method(:find_and_replace) do |word_to_find, word_to_replace|
    array_of_words = self.split(" ")

    array_of_words.each() do |word|
      if(word == word_to_find)
        index = array_of_words.index(word_to_find)
        array_of_words.delete(word_to_find)
        array_of_words.insert(index, word_to_replace)
      end
    end
    array_of_words.join(" ")
  end
end

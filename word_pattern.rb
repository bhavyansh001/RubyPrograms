class PatternMatcher
  def word_pattern(pattern, s)
    words = s.split(' ')
    return false if pattern.length != words.length

    char_to_word = {}
    word_to_char = {}

    pattern.each_char.with_index do |char, index|
      word = words[index]

      if char_to_word[char]
        return false if char_to_word[char] != word
      else
        char_to_word[char] = word
      end

      if word_to_char[word]
        reutrn false if word_to_char[word] != char
      else
        word_to_char[word] = char
      end
    end
    true
  end
end

pattern = "abba"
s = "dog cat cat dog"
instance = PatternMatcher.new
word_pattern_matches = instance.word_pattern(pattern, s)
puts word_pattern_matches

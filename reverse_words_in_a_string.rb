class StringManipulator
  def self.reverse_words(s)
    words = []
    current_word = ""

    s.each_char do |char|
      if char != ' '
        current_word += char
      elsif !current_word.empty?
        words.unshift(current_word)
        current_word = ""
      end
    end
    words.unshift(current_word) unless current_word.empty?
    words.join(' ')
  end
end

s = "the sky is blue"
reversed = StringManipulator.reverse_words(s)
puts reversed

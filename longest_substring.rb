class SubstrUtil
  def self.length_of_longest_substring(s)
    char_index = {}
    max_length = 0
    left = 0
    s.each_char.with_index do |char, right|
      if char_index.key?(char) && char_index[char] >= left
        left = char_index[char] + 1
      end
      char_index[char] = right
      current_length = right - left + 1
      max_length = [max_length, current_length].max
    end
    max_length
  end
end

s = "abcabcbb"
result = SubstrUtil.length_of_longest_substring(s)
puts result

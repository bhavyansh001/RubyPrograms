require 'set'

class Solution
  def ladder_length(begin_word, end_word, word_list)
    word_set = Set.new(word_list)
    return 0 unless word_set.include?(end_word)

    queue = [[begin_word, 1]]  # [word, transformations]
    visited = Set.new([begin_word])

    while !queue.empty?
      word, transformations = queue.shift

      return transformations if word == end_word

      0.upto(word.length - 1) do |i|
        ('a'..'z').each do |char|
          new_word = word[0...i] + char + word[i+1..-1]
          if word_set.include?(new_word) && !visited.include?(new_word)
            visited.add(new_word)
            queue.push([new_word, transformations + 1])
          end
        end
      end
    end

    0  # If it's impossible to reach the end word
  end
end

# Example usage
solution = Solution.new

# Test cases
test_cases = [
  {
    begin_word: "hit",
    end_word: "cog",
    word_list: ["hot","dot","dog","lot","log","cog"],
    expected: 5
  },
  {
    begin_word: "hit",
    end_word: "cog",
    word_list: ["hot","dot","dog","lot","log"],
    expected: 0
  }
]

test_cases.each_with_index do |test_case, index|
  result = solution.ladder_length(test_case[:begin_word], test_case[:end_word], test_case[:word_list])
  puts "Test case #{index + 1}:"
  puts "  Input: begin_word = '#{test_case[:begin_word]}', end_word = '#{test_case[:end_word]}', word_list = #{test_case[:word_list]}"
  puts "  Output: #{result}"
  puts "  Expected: #{test_case[:expected]}"
  puts "  #{result == test_case[:expected] ? 'PASSED' : 'FAILED'}"
  puts
end

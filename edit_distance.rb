class DP
  def self.min_distance(word1, word2)
    m = word1.length
    n = word2.length
    dp = Array.new(m + 1) { Array.new(n + 1, 0) }

    (0..m).each do |i|
      dp[i][0] = i
    end

    (0..n).each do |j|
      dp[0][j] = j
    end

    (1..m).each do |i|
      (1..n).each do |j|
        if word1[i - 1] == word2[j - 1]
          dp[i][j] = dp[i - 1][j - 1]
        else
          dp[i][j] = [dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1]].min + 1
        end
      end
    end
    dp[m][n]
  end
end

word1 = "intention"
word2 = "execution"

edit_distance = DP.min_distance(word1, word2)
puts edit_distance

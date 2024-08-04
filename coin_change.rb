class DP
  def self.coin_change(coins, amount)
    dp = Array.new(amount + 1, amount + 1)
    dp[0] = 0

    (1..amount).each do |i|
      coins.each do |coin|
        if coin <= i
          dp[i] = [dp[i], dp[i - coin] + 1].min
        end
      end
    end
    dp[amount] > amount ? -1 : dp[amount]
  end
end

coins = [1, 2, 5]
amount = 11

minimum_coins = DP.coin_change(coins, amount)
puts minimum_coins

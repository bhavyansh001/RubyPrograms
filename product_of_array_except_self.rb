class Product
  def product_except_self(nums)
    n = nums.length
    answer = Array.new(n, 1)

    # Calculate left products
    left_product = 1
    (0...n).each do |i|
      answer[i] *= left_product
      left_product *= nums[i]
    end

    # Calculate right products and combine
    right_product = 1
    (n-1).downto(0) do |i|
      answer[i] *= right_product
      right_product *= nums[i]
    end
    answer
  end
end

nums = [1, 2, 3, 4]
calculator = Product.new
result = calculator.product_except_self(nums)
puts result.inspect

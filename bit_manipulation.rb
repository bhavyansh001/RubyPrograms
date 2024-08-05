class BitUtilityClass

  def add_binary(a, b)
    (a.to_i(2) + b.to_i(2)).to_s(2)  # converts binary string to binary integer, adds them, returns sum as binary string
  end

  def reverse_bits(n)
    reversed = 0
    32.times do
      reversed = (reversed << 1) | (n & 1)  # left shift = *2 in binary, (n & 1) gives the LSB of n (last bit), these two are combined with bitwise OR which sets bit to '1' if any one of the two is '1'
      n >>= 1  # Right shift n by one for above condition to work
    end
  end

  def hamming_weight(n)
    n.to_s(2).count('1')
  end

  def single_number(nums)
    nums.reduce(:^)  # reduce applies XOR to all elements sequentially
  end

  def single_number_ii(nums)
    one = 0  # to track bits that appeared once
    two = 0  # to track bits that appeared twice
    nums.each do |num|
      one = (one ^ num) & ~two  # Bitwise NOT operator used 
      two = (two ^ num) & ~one
    end
    one
  end

  def range_bitwise_and(m, n)
    shift = 0
    while m < n  # finds common prefix of their binary representation
      m >>= 1  # or /2
      n >>= 1  # or /2
      shift += 1
    end
    m << shift  # or *2
  end
  
end

bit_util = BitUtilityClass.new

binary_sum = bit_util.add_binary('1101', '1011')
puts "add_binary('1101', '1011') => #{binary_sum}" 

reversed_bits = bit_util.reverse_bits(43261596)
puts "reverse_bits(43261596) => #{reversed_bits}" 

weight = bit_util.hamming_weight(11)
puts "hamming_weight(11) => #{weight}" 

single_num = bit_util.single_number([4, 1, 2, 1, 2])
puts "single_number([4, 1, 2, 1, 2]) => #{single_num}"

single_num_ii = bit_util.single_number_ii([2, 2, 3, 2])
puts "single_number_ii([2, 2, 3, 2]) => #{single_num_ii}" 

bitwise_and_result = bit_util.range_bitwise_and(5, 7)
puts "range_bitwise_and(5, 7) => #{bitwise_and_result}"


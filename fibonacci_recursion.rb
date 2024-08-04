def fibonacci(n)
  return n if n <= 1
  fibonacci(n - 1) + fibonacci(n - 2)
end

def fibonacci_sequence(n, current = 0)
  if current <= n
    print "#{fibonacci(current)} "
    fibonacci_sequence(n, current + 1)
  end
end

# Example usage:
n = 10
puts "Fibonacci sequence up to #{n}:"
fibonacci_sequence(n)
puts "\nThe #{n}th Fibonacci number is: #{fibonacci(n)}"


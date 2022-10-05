is_even = Proc.new { |num| num % 2 == 0 ? true : false }

p is_even.call(12) # => true
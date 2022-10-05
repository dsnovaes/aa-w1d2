def reverser(str, &prc)
    prc.call(str.reverse)
end

# p reverser("abcd") { |string| string.upcase }
# p reverser("hello") { |string| string + "!!!" }

def word_changer(str, &prc)
    result = []
    str.split(" ").each { |word| result << prc.call(word) }
    result.join(" ")
end

# p word_changer("goodbye moon") { |word| word.upcase + "!" }
# p word_changer("Hello World") { |word| ".." + word.downcase + ".." }

def greater_proc_value(num, *procs)
    [procs[0].call(num),procs[1].call(num)].max
end

times_10 = Proc.new { |n| n * 10 }
square = Proc.new { |n| n * n }
negate = Proc.new { |n| n * -1 }
even = Proc.new { |n| n.even? }
negative = Proc.new { |n| n < 0 }
half = Proc.new { |n| n / 2.0 }
times_thousand = Proc.new { |n| n * 1000 }

# p greater_proc_value(3, times_10, square)
# p greater_proc_value(12, times_10, square)
# p greater_proc_value(-5, times_10, negate)

def and_selector(arr, *procs)
    arr.select { |ele| procs[0].call(ele) && procs[1].call(ele) }
end

# p and_selector([-5, 0, -8, 8, -2], even, negative) # => [-8, -2]
# p and_selector([5, 4, 10, 15], even, negative)

def alternating_mapper(arr, *procs)
    result = []
    arr.each_with_index do |ele,i|
        if i % 2 != 0
            result << procs[1].call(ele)
        else
            result << procs[0].call(ele)
        end
    end
    result
end

# p alternating_mapper([1,10,4,7,5], half, times_thousand) # => [0.5, 10000, 2.0, 7000, 2.5]
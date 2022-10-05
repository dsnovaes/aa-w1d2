def my_map(arr, &prc)
    result = []
    arr.each { |num| result << prc.call(num) }
    result
end

# p my_map([1,2,3]) { |n| 2 * n }
# p my_map(["Hey", "Jude"]) { |word| word + "?" }
# p my_map([false, true]) { |bool| !bool }

def my_select(arr, &prc)
    result = []
    arr.each { |ele| result << ele if prc.call(ele)  }
    result
end

# p my_select([0, 2018, 1994, -7]) { |n| n > 0 }

def my_count(arr, &prc)
    result = []
    arr.each { |ele| result << ele if prc.call(ele)  }
    result.length
end

# p my_count([1,4,3,8]) { |n| n.even? }
# p my_count(["DANIEL", "JIA", "KRITI", "dave"]) { |s| s == s.upcase }

def my_any?(arr, &prc)
    result = []
    arr.each { |ele| return true if prc.call(ele)  }
    return false
end

# p my_any?([7, 10, 3, 5]) { |n| n.even? }
# p my_any?([7, 11, 3, 5]) { |n| n.even? }
# p my_any?(["q", "r", "s", "t"]) { |char| "aeiou".include?(char) }

def my_all?(arr, &prc)
    arr.none? { |ele| !prc.call(ele) }
end

# p my_all?([3, 5, 7, 11]) { |n| n.odd? } # => true
# p my_all?([3, 5, 8, 11]) { |n| n.odd? } # => false

def my_none?(arr, &prc)
    arr.all? { |ele| !prc.call(ele) }
end

# p my_none?([3, 5, 7, 11]) { |n| n.even? } # => true
# p my_none?([3, 5, 8, 11]) { |n| n.even? } # => false
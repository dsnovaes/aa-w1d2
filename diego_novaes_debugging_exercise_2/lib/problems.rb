# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    result = []
    (0..num).each do |factor|
        if prime?(factor) && num % factor == 0
            result << factor
        end

    end
    result.max
end

def prime?(num)
    return false if num < 2
    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end


def unique_chars?(str)
    count = Hash.new(0)
    str.each_char { |char| count[char] += 1 }
    count.each do |k,v|
        return false if v >= 2
    end
    return true
end

def dupe_indices(arr)
    count = Hash.new(0)
    result = Hash.new([])
    arr.each { |ele| count[ele] += 1 }
    count.each do |k,v|
        if v > 1
            temp_arr = []
            arr.each_with_index do |ele,i|
               if ele == k
                temp_arr << i
               end 
            end
            result[k] = temp_arr
        end
    end
    return result
end

def ana_array(arr1,arr2)
    word1 = Hash.new(0)
    arr1.each { |ele| word1[ele] +=1 }
    word2 = Hash.new(0)
    arr2.each { |ele| word2[ele] +=1 }
    word1 == word2
end
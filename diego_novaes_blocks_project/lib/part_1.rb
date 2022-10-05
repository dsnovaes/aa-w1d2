$vowels = "aeiouAEIOU"

def select_even_nums(numbers)
    numbers.select(&:even?)
end

def reject_puppies(dogs)
    dogs.reject { |dog| dog["age"] < 3 }
end

def count_positive_subarrays(arr)
    arr.count { |subArr| subArr.sum > 0 }
end

def aba_translate(str)
    new_str = ""
    str.each_char do |char|
        if !$vowels.include?(char)
            new_str += char
        else
            new_str += char + "b" + char
        end
    end
    new_str
end

def aba_array(arr)
    arr.map { |word| aba_translate(word) }
end
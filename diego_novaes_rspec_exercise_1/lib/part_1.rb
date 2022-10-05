def average(num1, num2)
    return (num1 + num2) / 2.0
end

def average_array(arr)
    return arr.sum / ( arr.length * 1.0 )
    # return result if result.instance_of?(Integer)
    # return result * 1.0 if result.instance_of?(Float)
end

def repeat(str,repeats)
    return str * repeats
end

def yell(str)
    return str.upcase! + "!"
end

def alternating_case(sentence)
    arr = sentence.split(" ")
    result = []
    arr.each_with_index do |word,i|
        if i % 2 == 1
            result << word.downcase
        else
            result << word.upcase
        end
    end
    return result.join(" ")
end
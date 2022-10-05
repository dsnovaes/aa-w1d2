require "byebug"

arr = [6,2,8,9,3,7,1]

def bubble(numbers)
    sorted = false
    debugger
    while !sorted
        sorted = true
        (0...numbers.length-1).each do |i|
            if numbers[i] > numbers[i+1]
                numbers[i], numbers[i+1] = numbers[i+1], numbers[i]
                sorted = false
            end
        end
    end
    numbers
end

print bubble(arr)
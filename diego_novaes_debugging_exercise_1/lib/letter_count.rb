# Debug this code to pass rspec! There are 3 mistakes to fix.

# Write a method, letter_count, that accepts a string and char as args. 
# The method should return the number of times that the char appears in the string.

require "byebug"

def letter_count(string, char)
    count = 0 # initial value should be 0
    # debugger
    string.downcase.each_char do |c| # forcing downcase of the string, to compare it with the downcased character
        count += 1 if c == char.downcase # when comparing two string must use double "=", and it is safe to force downcase to compare the characters
    end
    count
end

p letter_count("apple", "p")
p letter_count("apple", "q")
p letter_count("MISSIPPI", "i") 
$vowels = "aeiouAEIOU"
$alphabet = "abcdefghijklmnopqrstuvwxyz"

def last_vowel(word)
    i = word.length-1
    while i > 0
        if $vowels.include?(word[i])
            return i
        end
        i-=1
    end
    return false
end

def hipsterfy(str)
    remove = last_vowel(str)
    return str if !remove
    result = str[0...remove] + str[remove+1..-1]
    result
end

def vowel_counts(str)
    count = Hash.new(0)
    str.each_char do |char|
        if $vowels.include?(char)
            count[char.downcase] += 1
        end
    end
    count
end

def caesar_cipher(msg, num)
    new_str = ""
    msg.each_char do |char|
        if $alphabet.include?(char)
            idx = ($alphabet.index(char) + num) % 26
            new_str += $alphabet[idx]
        else
            new_str += char
        end
    end
    new_str
end
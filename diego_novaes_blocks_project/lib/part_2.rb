def all_words_capitalized?(arr)
    arr.all? { |word| word[0] == word[0].upcase && word[1...-1] == word[1...-1].downcase }
end

def no_valid_url?(urls)
    validurls = "com.net.io.org."
    urls.none? { |url| validurls.include?((url.split(".")[1] + ".")) }
end

def any_passing_students?(students)
    students.any? { |student| (student[:grades].sum / student[:grades].length) >= 75  }
end

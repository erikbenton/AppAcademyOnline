def all_words_capitalized?(words)
    words.all? { |word| word == word.capitalize }
end

def no_valid_url?(urls)
    valid_ends = ["com", "net", "io", "org"]
    
    urls.none? do |url|
        parsed_url = url.split(".")
        valid_ends.include?(parsed_url[-1])
    end
end

def any_passing_students?(students)
    students.any? { |student| get_avg(student[:grades]) >= 75 }
end

def get_avg(arr)
    arr.sum / arr.length
end
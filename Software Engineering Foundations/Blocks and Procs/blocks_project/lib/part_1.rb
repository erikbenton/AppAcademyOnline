def select_even_nums(arr)
    arr.select(&:even?)
end

def reject_puppies(dogs)
    dogs.reject { |dog| dog["age"] < 3 }
end

def count_positive_subarrays(arr)
    arr.count { |sub_arr| sub_arr.sum > 0 }
end

def aba_translate(word)
    vowels = "aeiou".split("")
    new_word = ""
    word.each_char do |char|
        new_word += (char + 'b') if vowels.include?(char.downcase)
        new_word += char
    end
    new_word
end

def aba_array(words)
    words.map { |word| aba_translate(word) }
end
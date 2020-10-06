def palindrome?(word)
    size = word.length
    return true if size == 1
    (0...(size/2)).each do |ind|
        first = word[ind]
        last = word[size - 1 - ind]
        return false if first != last
    end
    true
end

def substrings(word)
    sub_words = []
    (0...word.length).each do |ind1|
        (ind1...word.length).each do |ind2|
            new_word = word[ind1..ind2]
            sub_words.push(new_word) unless sub_words.include?(new_word)
        end
    end
    sub_words
end

def palindrome_substrings(word)
    substrings(word).select { |word| word.length > 1 && palindrome?(word) }
end
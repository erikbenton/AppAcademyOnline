def partition(nums, div)
    parted_nums = [[], []]
    nums.each do |num|
        if num < div
            parted_nums[0].push(num)
        else
            parted_nums[1].push(num)
        end
    end
    parted_nums
end

def merge(hash1, hash2)
    merged_hash = {}
    copy_hash(hash1, merged_hash)
    copy_hash(hash2, merged_hash)
    merged_hash
end

def copy_hash(from_hash, to_hash)
    from_hash.each do |k, v|
        to_hash[k] = v
    end
end

def censor(sentence, curse_words)
    new_sentence = sentence.split
    (0...new_sentence.length).each do |ind|
        word = new_sentence[ind]
        word = remove_vowels(word) if curse_words.include?(word.downcase)
        new_sentence[ind] = word
    end
    new_sentence.join(" ")
end

def remove_vowels(word)
    vowels = "aeiou".split("")
    new_word = word
    (0...word.length).each do |ind|
        letter = word[ind].downcase
        new_word[ind] = "*" if vowels.include?(letter)
    end
    new_word
end

def power_of_two?(num)
    return true if num == 1
    return false if num < 1
    while(num > 2)
        num /= 2
    end
    return num == 2
end
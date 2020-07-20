def hipsterfy(word)
  vowels = "aeiou".split("")
  letters = word.split("")
  (-word.length..-1).to_a.reverse.each do |idx|
    if vowels.include?(word[idx].downcase)
      word[idx] = "*"
      return word.split("*").join("")
    end
  end
  word
end

def vowel_counts(str)
  vowel_count = Hash.new { |h,k| h[k] = 0 }
  str.each_char { |char| vowel_count[char.downcase] += 1 }
  vowel_count
end

def caesar_cipher(str, num)
  letters = str.split("")
  alphabet = ("a".."z").to_a
  (0...letters.length).to_a.each do |idx|
    char = letters[idx]
    char_idx = alphabet.index(char)
    letters[idx] = alphabet[(char_idx + num) % alphabet.length] if char_idx
  end
  letters.join("")
end
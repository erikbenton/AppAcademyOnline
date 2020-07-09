# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
  res = [str[0]]
  count = 1
  (1...str.length).each do |idx|
    char = str[idx]
    if char.eql?(res.last)
      count += 1
    else
      res.push(count, char)
      count = 1
    end
  end
  res.push(count)
  idx = 0
  (res.length/2).times do
    res[idx], res[idx + 1] = res[idx + 1], res[idx]
    idx += 2
  end
  res.filter! { |el| el != 1 }
  res.join("")
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"

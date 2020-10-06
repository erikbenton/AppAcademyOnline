def average(num_1, num_2)
  (num_1 + num_2).to_f / 2.0
end

def average_array(arr)
  arr.sum.to_f / arr.length.to_f
end

def repeat(str, num)
  str * num
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(str)
  words = str.split(" ")
  (0...words.length).each do |idx|
    idx % 2 == 0 ? words[idx].upcase! : words[idx].downcase!
  end
  words.join(" ")
end

puts alternating_case("My Main man bo-bandy")
# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
    (2...num).each do |div|
        return false if num % div == 0
    end
    true
end

def largest_prime_factor(num)
    (2..num).to_a.reverse.each do |div|
        return div if num % div == 0 && prime?(div)
    end
    num
end

def unique_chars?(string)
    letter_count = Hash.new { |h, k| h[k] = 0}
    string.each_char do |char|
        letter_count[char] += 1
        return false if letter_count[char] > 1
    end
    true
end

def dupe_indices(array)
    indices = Hash.new { |h, k| h[k] = [] }
    array.each_with_index do |val, ind|
        indices[val].push(ind)
    end
    indices.select { |k, v| indices[k].length > 1 }
end

def ana_array(array1, array2)
    return false if array1.length != array2.length
    res = array1.all? { |val| array2.include?(val)}
    res &= array2.all? { |val| array1.include?(val)}
end
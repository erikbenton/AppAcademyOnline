def my_map(arr, &prc)
    new_arr = []
    (0...arr.length).each {|ind| new_arr.push(prc.call(arr[ind])) }
    new_arr
end

def my_select(arr, &prc)
    new_arr = []
    (0...arr.length).each do |ind|
        new_arr.push(arr[ind]) if prc.call(arr[ind])
    end
    new_arr
end

def my_count(arr, &prc)
    new_arr = my_select(arr, &prc)
    new_arr.length
end

def my_any?(arr, &prc)
    (0...arr.length).each do |ind|
        return true if prc.call(arr[ind])
    end
    false
end

def my_all?(arr, &prc)
    (0...arr.length).each do |ind|
        return false unless prc.call(arr[ind])
    end
    true
end

def my_none?(arr, &prc)
    (0...arr.length).each do |ind|
        return false if prc.call(arr[ind])
    end
    true
end
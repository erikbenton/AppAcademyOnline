def reverser(string, &prc)
    prc.call(string.reverse)
end

def word_changer(sentence, &prc)
    words = sentence.split
    words.map! { |word| prc.call(word) }
    words.join(" ")
end

def greater_proc_value(num, prc1, prc2)
    res1 = prc1.call(num)
    res2 = prc2.call(num)
    return res1 > res2 ? res1 : res2
end

def and_selector(arr, prc1, prc2)
    new_arr = arr.select do |el|
        prc1.call(el) && prc2.call(el)
    end
end

def alternating_mapper(arr, prc1, prc2)
    new_arr = []
    arr.each_with_index do |el, ind|
        if ind % 2 == 0
            new_arr.push(prc1.call(el))
        else
            new_arr.push(prc2.call(el))
        end
    end
    new_arr
end
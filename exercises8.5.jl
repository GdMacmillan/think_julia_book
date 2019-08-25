function find(word, letter, index=1)
    while index <= sizeof(word)
        if word[index] == letter
            return index
        end
        index = nextind(word, index)
    end
    -1
end

function mycount(word, letter)
    global counter = 0
    prev_index = 0
    while true
        index = find(word, letter, nextind(word, prev_index))
        if index == -1
            break
        else
            counter += 1
        end
        prev_index = index
    end
    println(counter)
end

mycount("dnfinsdngnsaaa", 'a')

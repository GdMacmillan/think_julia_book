function find(word, letter, index=1)
    while index <= sizeof(word)
        if word[index] == letter
            return index
        end
        index = nextind(word, index)
    end
    -1
end

find("alpha", 'p', 3)

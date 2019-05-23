import Base.first

function first(word)
    first = firstindex(word)
    word[first]
end

function last(word)
    last = lastindex(word)
    word[last]
end

function middle(word)
    first = firstindex(word)
    last = lastindex(word)
    word[nextind(word, first) : prevind(word, last)]
end

first("ham")

first("a")

last("ham")

last("a")

middle("ham")

middle("na")

middle("")


function ispalindrome(word)
    if length(word) < 1
        return false
    elseif length(word) < 3
        if first(word) == last(word)
            return true
        else
            return false
        end
    else
        if first(word) == last(word)
            return ispalindrome(middle(word))
        else
            return false
        end
    end
end

ispalindrome("hudduh")

function divby(a, b)
    if a % b == 0
        return true
    end
    false
end

function ispower(a, b)
    println(a, b)
    if divby(a, b)
        if a / b == 1
            return true
        else
            return ispower(a / b, b)
        end
    end
    false
end

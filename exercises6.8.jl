import Base.gcd

function gcd(a, b)
    r = a % b
    if r == 0
        return a
    end
    return gcd(b, r)
end

gcd(15, 5)

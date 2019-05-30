""" Rewrite the following statement to use a while loop:
function printn(s, n)
    if n ≤ 0
        return
    end
    println(s)
    printn(s, n-1)
end
"""

function printn(s, n)
    while n > 0
        println(s)
        n -= 1
    end
end

printn("hi", 5)

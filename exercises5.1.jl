function printn(s, n)
    if n ≤ 0
        return
    end
    println(s)
    printn(s, n-1)
end

function do_n(func, n)
    for i in 1:n
        func()
    end
end

do_n(printn, 4)

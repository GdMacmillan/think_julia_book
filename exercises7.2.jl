function mysqrt(a)
    ε = 1e-16
    x = a / 2
    while true
        y = (x + a/x) / 2
        if abs(y - x) < ε
            break
        end
        x = y
    end
    return x
end


function bufferedstring(x, len)
    buffer = " " ^ (len - length(string(x)))
    x = string(x) * buffer
end


function testsquareroot()
    println("a   mysqrt             sqrt               diff")
    println("----------------------------------------------")
    for i in 1:9
        mys = mysqrt(i)
        s = sqrt(i)
        line = string(float(i)) * " " * bufferedstring(mys, 18) * " " * bufferedstring(s, 18) * " " * string(abs(mys - s))
        println(line)
    end
end


testsquareroot()

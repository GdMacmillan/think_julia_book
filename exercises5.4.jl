function istriangle(a, b, c)
    if a + b <= c
        println("no")
    elseif b + c <= a
        println("no")
    elseif a + c <= b
        println("no")
    else
        println("yes")
    end
end

istriangle(.6, 1, .5)

function prompt_user_and_check_istriangle()
    println("Enter a length for side a: "); a = readline()
    a = parse(Int64, a)
    println("Enter a length for side b: "); b = readline()
    b = parse(Int64, b)
    println("Enter a length for side c: "); c = readline()
    c = parse(Int64, c)

    istriangle(a, b, c)
end

prompt_user_and_check_istriangle()

function checkfermat(a, b, c, n)
    if a^n + b^n == c^n & n > 2
        println("Holy smokes, Fermat was wrong!")
    else
        println("No, that doesn't work.")
    end
end

# checkfermat(2, 3, 6, 7)3

function prompt_user_and_check_fermat()
    println("Enter a value for a: "); a = readline()
    a = parse(Int64, a)
    println("Enter a value for b: "); b = readline()
    b = parse(Int64, b)
    println("Enter a value for c: "); c = readline()
    c = parse(Int64, c)
    println("Enter a value for n: "); n = readline()
    n = parse(Int64, n)

    checkfermat(a, b, c, n)
end

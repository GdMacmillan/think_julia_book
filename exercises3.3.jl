function dotwice(f, value)
    f(value)
    f(value)
end

function printspam(value)
    println(value)
end

dotwice(printspam, "my name is gordon")

function dofour(f, value)
    dotwice(f, value)
    dotwice(f, value)
end

dofour(printspam, "spam")

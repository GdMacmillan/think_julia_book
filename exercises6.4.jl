""" Draw a stack diagram for the following program. What does the program print?
function b(z)
    prod = a(z, z)
    println(z, " ", prod)
    prod
end

function a(x, y)
    x = x + 1
    x * y
end

function c(x, y, z)
    total = x + y + z
    square = b(total)^2
    square
end

x = 1
y = x + 1
println(c(x, y+3, x+y))
"""

main | prints: 8100
c    | x - > 1, y - > 5, z - > 3, total = 9, square = 8100, returns 8100
b    | z = 9, prod = 90, prints: 9 90, returns 90
a    | x = 9, y = 9, x = 10, returns 90

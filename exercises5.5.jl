# Output from the function recurse is:
# > recurse(3, 0)
# state - main: n = 3, s = 0
# state - internal iter1: n = 2, s = 3
# state - internal iter2: n = 1, s = 5
# state - internal iter3: n = 0, s = 6; output: 6

# 1. What would happen if you called this function like this: recurse(-1, 0)?
# n would keep decreasing with every iteration but since it is less than zero, it would never exit and there for reach the maximum recursion depth

# 2. Write a docstring that explains everything someone would need to know in order to use this function (and nothing else).
"""
Function recurse will calculate the sum of all positive integers in the range
[n, 0] and add to s. First input n must be positive.
args -  n int
        s int
"""
function recurse(n, s)
    if n == 0
        println(s)
    else
        recurse(n-1, n+s)
    end
end

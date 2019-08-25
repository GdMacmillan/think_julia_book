"""
this function is wrong because inside the for loop, the
conditional statement only evaluates against the 1st character
and returns true or false
"""
function anylowercase1(s)
    for c in s
        if islowercase(c)
            return true
        else
            return false
        end
    end
end

"""
this function is wrong because it is not checking any characters
in the string it is checking just the hardcoded character 'c'
thus it will always return true
"""
function anylowercase2(s)
    for c in s
        if islowercase('c')
            return "true"
        else
            return "false"
        end
    end
end

"""
this function is wrong because it is setting the variable flag
to the result of islowercase for each character and overwriting
the previous value. This will only check if the last character
is lowercase
"""
function anylowercase3(s)
    for c in s
        flag = islowercase(c)
    end
    flag
end

"""
this function evaluates to true if flag is ever set to true
while looping through characters in s. So this is the correct
function
"""
function anylowercase4(s)
    flag = false
    for c in s
        flag = flag || islowercase(c)
    end
    flag
end

"""
this function has the right idea. It iteratively checks each
character for the not lowercase condition at which point it will
return false. What it should do is check if each character is
lowercase and return true when it does. If at the end it hasn't
found a lowercase character it should return false.
"""
function anylowercase5(s)
    for c in s
        if !islowercase(c)
            return false
        end
    end
    true
end

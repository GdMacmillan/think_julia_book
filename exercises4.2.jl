#!/usr/bin/env julia
using ThinkJulia

# 1 write a function which takes a parameter t (which is a turtle) and draws a square with the svg macro using the ThinkJulia package

function square(t)
    @svg begin
        for i in 1:4
            forward(t, 100)
            turn(t, -90)
        end
    end
end

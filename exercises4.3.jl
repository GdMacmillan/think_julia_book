#!/usr/bin/env julia
using ThinkJulia

function square(t)
    @svg begin
        for i in 1:4
            forward(t, 100)
            turn(t, -90)
        end
    end
end

🐢 = Turtle()
square(🐢)

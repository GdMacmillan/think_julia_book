#!/usr/bin/env julia
using ThinkJulia

function square(t, len)
    @svg begin
        for i in 1:4
            forward(t, len)
            turn(t, -90)
        end
    end
end

🐢 = Turtle()
square(🐢, -4)

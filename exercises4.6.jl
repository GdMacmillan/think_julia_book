#!/usr/bin/env julia
using ThinkJulia

function circle(t, r)
    n_steps = 1000
    circumfrence = 2 * π * r
    len = circumfrence / n_steps
    @svg begin
        for i in 1:n_steps
            forward(t, len)
            turn(t, -360 / n_steps)
        end
    end
end

🐢 = Turtle()
circle(🐢, 100)

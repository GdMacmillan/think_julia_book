#!/usr/bin/env julia
using ThinkJulia

function arc(t, r, angle)
    original_n_steps = 1000
    n_steps = original_n_steps * angle / 360
    circumfrence = 2 * π * r
    len = circumfrence / original_n_steps
    @svg begin
        for i in 1:n_steps
            forward(t, len)
            turn(t, -angle / n_steps)
        end
    end
end

🐢 = Turtle()
arc(🐢, 100, 340)

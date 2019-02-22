#!/usr/bin/env julia
using ThinkJulia

function polygon(t, len, n)
    @svg begin
        for i in 1:n
            forward(t, len)
            turn(t, -360 / n)
        end
    end
end

🐢 = Turtle()
polygon(🐢, 100, 6)

using ThinkJulia

function draw(t, length, n)
    if n == 0
        return
    end
    angle = 50
    forward(t, length * n)
    turn(t, -angle)
    draw(t, length, n - 1)
    turn(t, 2 * angle)
    draw(t, length, n - 1)
    turn(t, -angle)
    forward(t, -length * n)
end

🐢 = Turtle()
draw(🐢, 4, 2)

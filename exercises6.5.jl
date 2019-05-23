function ack(m, n)
    if m < 0 || n < 0
        error("Ackerman function is only defined for positive integers.")
    elseif m == 0
        return n + 1
    elseif m > 0 && n == 0
        return ack(m - 1, 1)
    elseif m > 0 && n > 0
        return ack(m - 1, ack(m, n - 1))
    else
        return
    end
end

ack(3, 4)

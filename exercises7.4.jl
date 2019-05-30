const ϵ = 1e-15
const c = 2 * sqrt(2) / 9801

function estimatepi()
    out = 0
    k = 0
    while true
        num = factorial(4 * k) * (1103 + 26390 * k)
        denom = factorial(k) ^ 4 * 396 ^ (4 * k)
        term = num / denom
        if term < ϵ
            break
        end
        out += term
        k += 1
    end
    return 1 / (c * out)
end

function checkresult()
    if abs(estimatepi() - pi) < 1e-15
        return true
    end
    false
end

checkresult()

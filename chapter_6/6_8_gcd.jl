function gcd(a,b)
    if b == 0
        return a
    elseif a == 0
        return b
    end

    r = a % b
    return gcd(b,r)
end

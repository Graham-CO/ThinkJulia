using Printf

function mysqrt(a)
    x = 3
    while true
        
        y = (x + a/x) / 2
        ε = 0.0000001
        if abs(y-x) < ε
            return y
        end
        x = y
    end
end

function testsqrt(a)
    @printf "%1s %10s %20s %20s \n%1s %11s %19s %20s\n" "a" "mysqrt" "sqrt" "diff" "-" "--------" "----" "----"
    
    sqrt_a = 0
    for i in 1:a
        nwtn_methd = mysqrt(i)
        sqrt_a = sqrt(i)
        diff = nwtn_methd - sqrt_a
        @printf "%1.1f %10f %20f %20.6e\n" i nwtn_methd sqrt_a diff
    end
end

testsqrt(6)
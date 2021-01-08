function printn(s,n)
    if n <= 0
        return
    end
    println(s)
    printn(s,n-1)
end

function do_n(f,n)
    f("Hello",n)
end

do_n(printn,2)
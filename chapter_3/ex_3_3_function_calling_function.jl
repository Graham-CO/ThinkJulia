function dotwice(f,x)
    f(x)
    f(x)
end

function printspam()
    println()
end

function printtwice(bruce)
    println(bruce)
    println(bruce)
end

function dofour(f,x)
    dotwice(f,x)
    dotwice(f,x)
end

dofour(printtwice,"spam")
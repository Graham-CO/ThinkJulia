function ispower(a,b)
    if a == 0 || b==0 || b==1
        return false
    elseif a == b 
        return true
    elseif a % b == 0 
        return ispower(a/b, b)
    else
        return false
    end
end

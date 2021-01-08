function rotateword(str, int)
    newstr = ""
    
    for c in str
        if islowercase(c)
            newstr = newstr * Char(Int(c) + int)
        else
            newstr = newstr * uppercase(Char(Int(c + 32) + int))
        end
    end
    newstr
end

rotateword("cheer", 7)
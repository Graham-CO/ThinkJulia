function avoids(str, forbid)
    for c in str
        if occursin(c,forbid)
            return false
        else return true
        end
    end
end

# This doesn't work, not sure why.
# User enters characters to forbid, text file is read to find which 
# words do not contain those characters

function twentyChars()
    count = 0
    print("Enter a string of characters you'd like to forbid.")
    forbid = readline()
    print(forbid)
    fin = open("words.txt")

    for line ∈ eachline(fin)
        for c ∈ line
            if !occursin(c, forbid)
                count += 1
            end
        end
    end
    print(count)
end

twentyChars()



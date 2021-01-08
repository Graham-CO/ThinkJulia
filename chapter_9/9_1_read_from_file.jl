function twentyChars()
    fin = open("words.txt")
    for line in eachline(fin)
        if length(line) > 20
            for c in line
                if c == 'e'
                    continue
                else 
                    break
                end
                return line
            end
        end
    end
end

twentyChars()
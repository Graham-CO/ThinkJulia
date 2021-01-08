using Printf

function hasno_e(str)
    for c in str
        if occursin('e', str)
            return false
        else return true
        end
    end
end

function twentyChars()
    fin = open("words.txt")
    count = 0
    line_count = 0
    for line in eachline(fin)
        line_count += 1
        if hasno_e(String(line))
            count += 1
            #println(line)
        end
    end
    percentage = (count/line_count) * 100
    @printf("%.2f%s", percentage, "% of words have no e")
end

twentyChars()



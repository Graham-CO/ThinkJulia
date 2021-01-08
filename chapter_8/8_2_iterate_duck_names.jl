function duckType()
    prefixes = "JKLMNOPQ"
    
    for letter in prefixes
        if letter == prefixes[6] || letter == prefixes[8]
            suffix = "uack"
        else
            suffix = "ack"
        end
        println(letter * suffix)
    end
end

duckType()
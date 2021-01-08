function count(word,char, index) 
    global counter = 0
    while index <= sizeof(word)
        if word[index] == char
            global counter += 1
        end
        index = nextind(word,index)
    end
    println(counter)
end

count("banana", 'a',2)

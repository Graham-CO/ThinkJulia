function usesonly(word, letters)
    for c ∈ word
        if c ∉ letters
            return false
        end
    end
    true
end

usesonly("hello", "hello")

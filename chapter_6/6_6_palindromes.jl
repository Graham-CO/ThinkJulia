
using BenchmarkTools

function first(word)
    first = firstindex(word)
    word[first]
end

function last(word)
    last = lastindex(word)
    word[last]
end

function middle(word)
    first = firstindex(word)
    last = lastindex(word)
    word[nextind(word, first) : prevind(word, last)]
end

# function ispalindrome(word)
#     if length(word) == 0
#         return true
#     elseif last(word) == first(word) && middle(word) == reverse(middle(word))
#         return true
#     else
#         return false
#     end
# end

function ispalindrome(word)
    if length(word) == 0 || length(word) == 1
        return true
    else
        return first(word) == last(word) && ispalindrome(middle(word))
    end
end
@btime ispalindrome("ohoho")

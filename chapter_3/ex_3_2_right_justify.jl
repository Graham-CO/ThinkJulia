# Write a function named rightjustify that takes a string named s as a parameter and prints 
# the string with enough leading spaces so that the last letter of the string is in column 70 of the display.

t = "supercallafrajalisticexpialidocious"

function rightjustify(s)
    whiteSpace = " " ^ (70-length(s))   # Determines number of spaces (want 70 columns, so subtract # chars in string from 70) 
    println(whiteSpace*s)               # Concatenate # whitespaces with the passed string
end

rightjustify(t)
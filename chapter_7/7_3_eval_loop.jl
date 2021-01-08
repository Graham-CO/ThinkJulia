function evalloop()
    while true
        print("Enter an expression to evaluate. Enter 'done' when finished \n\n")
        
        expr = Meta.parse(readline())
        if expr == "done"
            break
        end

        return eval(expr)
    end
end

evalloop()
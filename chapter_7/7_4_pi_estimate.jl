function estimatepi()
    sum = 0
    term = 2
    k = 0
    while term >= 1
        term = (factorial(4*k)*(1103 + 26390*k))/((factorial(k)^4)*396^(4*k))
        sum += term
        k += 1
    end

    pi_estimate = 1/(((2*sqrt(2))/9801)*sum)

    print(Float64(π), "\n")
    print(pi_estimate)

end

estimatepi()
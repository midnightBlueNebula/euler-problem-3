def primecheck(num)
    iter = 1
    while iter <= num
        puts iter
        if num%iter==0 && iter!=1 && iter!=num
            return false
        end
        iter+=1
    end
    return true 
end

number = 600851475143

def finddiv(x)
    div=2
    while(x%div!=0)
        div+=1
    end
    return x/div
end


check = true
answer='None'

if primecheck(number)
    answer = number
    check = false
end

if check
    iteration = finddiv(number)
end

while iteration>=2 && check==true
    puts iteration
    if number%iteration==0 && primecheck(iteration)==true
        answer = iteration
        check = false
    end
    iteration = finddiv(iteration)
end

puts answer
    function count_partitions(n)
        ways = zeros(BigInt, n+1)
        ways[1] = 1

        for i in 1:n
            for j in i:n
                if j - i + 1 >= 0
                    ways[j + 1] += ways[j - i + 1]
                end
            end
        end

        return ways[n + 1]
    end

    number = BigInt(200)
    combinations = count_partitions(number)

    println("Для числа $number существует $combinations различных комбинаций разбиения на сумму натуральных чисел.")
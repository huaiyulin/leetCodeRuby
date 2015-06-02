# @param {Integer} n
# @return {Integer}
def count_primes(n)
    arrPrime = [2]
    k = 1
    for i in 3..n
        arrPrime.each do |j|
            break if i%j == 0
            if j > Math.sqrt(i)
                arrPrime << i 
                k += 1
                break
            end
        end
    end
    return k
end

# -------------------------


def count_primes(n)
    arrPrime = []
    limit = Math.sqrt(n)
    for i in 2..n
        arrPrime << i
    end
    arrPrime.each do |j|
        i = 2
        break if j > limit
        until j*i > n 
            arrPrime.delete(j*i)
            i += 1
        end
    end
    return arrPrime.length
end
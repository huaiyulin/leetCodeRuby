# Number of 1 Bits
# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
    k = 0
    until n < 1
        r = n%2
        n = n/2.to_i
        k += r
    end
    return k
end
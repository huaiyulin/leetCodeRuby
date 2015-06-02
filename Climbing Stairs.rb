# Climbing Stairs.rb
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    return 1 if n == 1
    return 2 if n == 2
    an, am = 1, 2
    for m in 3..n
        amn = am + an
        an = am
        am = amn
    end
    amn
end
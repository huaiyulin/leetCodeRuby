# Excel Sheet Column Number.rb
# @param {String} s
# @return {Integer}
def title_to_number(s)
    sr = s.reverse
    digit = s.length
    num, numTotal = 0, 0
    arrChar = []
    for i in 'A'..'Z'
        arrChar << i
    end
    for j in 0..digit-1
        num = (arrChar.index(sr[j]) + 1) * 26**j
        numTotal += num    
    end
    numTotal
end
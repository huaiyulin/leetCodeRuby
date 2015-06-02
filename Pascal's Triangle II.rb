# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    n = row_index
    arr = [1]						#k = 0
    for i in 1..row_index			#C^n_k
        nn = (n+1-i..n).inject(:*)	#n!/(n-k)!
        nk = (1..i).inject(:*)		#k!
        num = nn/nk 				#n!/(n-k)!/k!
        arr << num
    end
    return arr 
end
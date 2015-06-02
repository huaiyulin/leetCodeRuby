# Roman to Integer
# @param {String} s
# @return {Integer}
# I（1）、V（5）、X（10）、L（50）、C（100）、D（500）和M（1000）
def roman_to_int(s)
	# 先給索引，找到對應的數字
    rtoi = {"I"=>1, "V"=>5, "X"=>10, "L"=>50, "C"=>100, "D"=>500, "M"=>1000}
    # 用來得到最後總和
    num = 0
    # a 用來記錄準備相加或相減的項目，rtoi[s[0]]會得到第一項轉換後的數字
    a = rtoi[s[0]]
    for i in 0..s.length-2
    	# 如果前項等於後項，則把 a 加上後項，num 不做運算
        if rtoi[s[i]] == rtoi[s[i+1]]
            a += rtoi[s[i+1]]
        # 如果前項不等於後項，num 做運算
        else
        	# 如果前項 < 後項，num - a
            if rtoi[s[i]] < rtoi[s[i+1]]
                num -= a
            # 如果前項 > 後項，num + a
            else
                num += a
            end
            # 由於前面的數列不會跑到最後一項由此帶入
            a = rtoi[s[i+1]]
        end
    end
    # 最後一項一定是加，不會是減，加上最後一項
    num += a
end


# ------------------------------------

def roman_to_int(s)
	# 先給索引，找到對應的數字
    rtoi = {"I"=>1, "V"=>5, "X"=>10, "L"=>50, "C"=>100, "D"=>500, "M"=>1000}
    # 用來得到最後總和
    num = 0
    # a 用來記錄準備相加或相減的項目，rtoi[s[0]]會得到第一項轉換後的數字
    a = rtoi[s[0]]
    arr = []
    for i in 0..s.length-1
    	# 將資料轉換成數字，並存入 arr[]
        arr << rtoi[s[i]]
    end
    for i in 0..s.length-2
    	# 如果前項等於後項，則把 a 加上後項，做資料儲存
        if arr[i] == arr[i+1]
            a += arr[i+1]
        # 如果前項不等於後項，num 做運算
        else
        	# 如果前項 < 後項，num - a
            if arr[i] < arr[i+1]
                num -= a
            # 如果前項 > 後項，num + a
            else
                num += a
            end
             # 由於前面的數列不會跑到最後一項由此帶入
            a = arr[i+1]
        end
    end
    # 最後一項一定是加，不會是減，加上最後一項
    num += a
end
# Valid Palindrome.rb
# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    return true if s.empty?
    s.downcase!
    s2 = ""
    arr = "abcdefghijklmnopqrstuvwxyz0987654321"
    # arr = []
    # for i in "a".."z"
    # 	arr << i
    # end
    # for i in "0".."9"
    # 	arr << i
    # end
    
    for i in 0..s.length - 1
        s2 << s[i] if arr.include?(s[i])
    end
    return true if s2 == s2.reverse
    false
end
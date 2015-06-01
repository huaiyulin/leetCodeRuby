# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
 return '' if strs.empty?
  s1, s2 = strs.min, strs.max
  s1.each_char.with_index do |c, i|
    return s1[0...i] if c != s2[i]
  end
  return s1
end


def longest_common_prefix(strs)
    strs.sort!{|index1,index2| index1 <=> index2}
    if strs[0] == nil
        return ""
    end
    strs[0]
end
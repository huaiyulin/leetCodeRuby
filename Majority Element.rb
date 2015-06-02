# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    nums.sort!
    nums[(nums.length/2).to_i]
end
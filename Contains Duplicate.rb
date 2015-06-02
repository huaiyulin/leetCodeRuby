# Contains Duplicate.rb
# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    nums.sort!
    for i in 0.. nums.length-1
        return true if nums[i] == nums[i+1]
    end
    return false
end
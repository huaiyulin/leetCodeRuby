# Single Number
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
   nums.sort!
   i = 0
   while i < nums.length
   return nums[i] if nums[i] != nums[i+1]
   i += 2
   end
end
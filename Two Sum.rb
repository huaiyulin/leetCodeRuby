# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
    for i in 0..nums.length-1
        num2 = target - nums[i]
        index1 = i+1
        index2 = nums.index(num2)
        if index2 != nil
            index2 = nums.index(num2) +1
            if index2 != index1
                if index1 < index2
                    return index1, index2
                end
                    return index2, index1
            end
        end
    end
end



def two_sum(nums, target)
    for i in 0...nums.length-1
        index1 = i+1
        num2 = target - nums[i]
        # nums2 = nums[index1..nums.length-1]
        nums2 = nums.drop(index1)
        j = nums2.index(num2)
        if j != nil
            index2 = index1 + j +1
            index = [index1,index2]
            return index
        end
    end
end
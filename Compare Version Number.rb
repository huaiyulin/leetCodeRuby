# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
    arr1 = version1.split(".")
    arr2 = version2.split(".")
    for i in 0..arr1.length
        if arr1[i].to_i > arr2[i].to_i
            return 1
        elsif arr2[i].to_i >arr1[i].to_i
            return -1
        end
    end
    return 0
    
end
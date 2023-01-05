# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def target_indices(nums, target)
  r = []
  nums.sort.each_with_index do |v, i|
    if v == target
      r << i
    elsif target > v
      break
    end
  end
  r
end


nums = [1,2,5,2,3]
target = 2

p target_indices(nums, target)


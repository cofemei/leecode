
# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
  nn = nums.sort
  # nn [1,2,3,8]
  hash = {}

  # nn each_with_index
  #1, 0
  #2, 1
  #3, 2
  #8, 3
  nn.each_with_index do |v, i|
    #puts "#{v}, #{i}"
    if !hash.has_key?(v)
      hash[v] = i
    end
  end

  nums.each_with_index do |v, i|
    nums[i] = hash[v]
  end

  nums
end


nums = [8,1,2,3]
puts smaller_numbers_than_current(nums)


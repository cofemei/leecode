# @param {Integer[]} nums
# @param {Integer[]} l
# @param {Integer[]} r
# @return {Boolean[]}
def check_arithmetic_subarrays(nums, l, r)
  result = []
  (0...l.length).each do |i|
    s = nums[l[i]..r[i]].sort
    d = s[1] - s[0]
    (s.length - 1).downto(1).each do |ni|
      if d == (s[ni] - s[ni-1])
        result[i] = true
      else
        result[i] = false
        break
      end
    end
  end

  result
end

nums = [4,6,5,9,3,7]
l = [0,0,2]
r = [2,3,5]


p check_arithmetic_subarrays(nums, l, r)

# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
  r = []
  nums.each do |n|
    if n.odd?
      r.push(n)
    else
      r.prepend(n)
    end
  end
  r 
end

nums = [3,1,2,4]

p sort_array_by_parity(nums)

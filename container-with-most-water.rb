# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  w = height.each_with_index do |i, index|
    puts i
    puts index
  end
  

    
end

h = [1,8,6,2,5,4,8,3,7]
puts max_area(h)

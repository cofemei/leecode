# @param {Integer[][]} first_list
# @param {Integer[][]} second_list
# @return {Integer[][]}
def interval_intersection(first_list, second_list)
  first_list.each do |a|
    second_list.each do |b|
      p a
      p b 

      if (b[0]..b[1]).include?(a[0])
        puts a[0]
      end

      if (b[0]..b[1]).include?(a[1])
        puts a[1]
      end
      if (a[0]..a[1]).include?(b[0])
        puts a[0]
      end

    end
  end
end


firstList = [[0,2],[5,10],[13,23],[24,25]]
secondList = [[1,5],[8,12],[15,24],[25,26]]

puts interval_intersection(firstList, secondList)

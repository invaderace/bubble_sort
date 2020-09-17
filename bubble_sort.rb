def bubble_sort list
  list_length = list.length
  swapping = true
  while swapping #until this is false (i.e. we have run enough iterations to not swap)
    swapping = false
      list.each_with_index do |item, idx|

        next if list[idx+1] == nil #if we are at the last index. prob could write as list.length == idx-1, but I like keeping idx+1 for consistency.
          
        if item > list[idx+1]
          list[idx] = list[idx+1]
          list[idx+1] = item
          swapping = true #make the loop go again until nothing is swapped
        end

      end
  end
  return list
end

p bubble_sort [4,3,78,2,0,2]
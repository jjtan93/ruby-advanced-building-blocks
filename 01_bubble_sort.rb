def bubble_sort(arrayToSort)
  arrayToReturn = arrayToSort
  max = arrayToReturn.length - 1
  
  for i in (0..(arrayToReturn.length - 1) )
    max -= i
    for j in (0..(arrayToReturn.length - 2) )
      
      if(arrayToReturn[j] > arrayToReturn[j+1])
        temp = arrayToReturn[j]
        arrayToReturn[j] = arrayToReturn[j+1]
        arrayToReturn[j+1] = temp
      end
    end
  end
  
  arrayToReturn
end

def bubble_sort_by(arrayToSort)
  arrayToReturn = arrayToSort
  max = arrayToReturn.length - 1
  
  for i in (0..(arrayToReturn.length - 1) )
    max -= i
    for j in (0..(arrayToReturn.length - 2) )
      
      # Run block here
      yieldResult = yield(arrayToReturn[j], arrayToReturn[j+1])
      
      if(yieldResult > 0)
        temp = arrayToReturn[j]
        arrayToReturn[j] = arrayToReturn[j+1]
        arrayToReturn[j+1] = temp
      end
    end
  end
  
  arrayToReturn
end

puts bubble_sort([4,3,78,2,0,2])

result = bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
puts result
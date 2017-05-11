require 'byebug'
def my_min(list)
  lowest = list[0]
  list.drop(1).each do |el|

      list.drop(2).each do |el2|
        if el < el2
          lowest = el if lowest > el
        else
          lowest = el2 if lowest > el2
        end

      end
    end

  lowest
end

#puts my_min2([ 0, 3, 5, 4, -5, 10, 1, 90 ])


def my_min2(list)
  lowest = list.first

  list.drop(1).each do |el|
    lowest = el if el < lowest
  end

  lowest
end

def largest_contiguous_subsum(list)
  subarray = []
  i = 0
  while i < list.length
    j = 0

    while j < list.length
      subarray << list[i..j] if j >= i
      j += 1
    end

    i += 1
  end
  #subarray
  highest_sum = subarray[0].reduce(:+)
  subarray.drop(1).each do |array|
    comparison_array = array.reduce(:+)
    highest_sum = comparison_array if comparison_array > highest_sum
  end
  highest_sum
end



def largest_contiguous_subsum2(list)
  current_sum = 0
  max = list[0]

  list.each do |el|
    current_sum += el
    current_sum = 0 if current_sum <= 0
    max = current_sum if current_sum > max
  end

  max
end

example = [4,3,78,2,0,2]

def bubble_sort(array)
  n = array.length

  swapped = true
  until (swapped == false) do
    count = 0
    # create a for loop from 1 to n-1
    for i in 1...n
      # compare if value on left adjacent of array[i] is greater
      if (array[i-1] > array[i])
        # if true, swap the values
        array[i-1], array[i] = array[i], array[i-1]
        swapped = true
        count += 1
      end
    end
    # terminate the loop if no swaps happened
    swapped = false if count < 1
  end

  array
end

p bubble_sort(example)
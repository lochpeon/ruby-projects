example = [4,3,78,2,0,2]

def bubble_sort(array)
  array.length.times do |number|
    count = 0
    array.each_with_index do |value, key|
      unless (array.dig(key + 1).nil?)
        if (array[key] <= array[key + 1])
          next
        else
          array[key] = array[key] + array[key + 1]
          array[key + 1] = array[key] - array[key + 1]
          array[key] = array[key] - array[key + 1]
          count += 1
        end
      else
        break
      end

      p count
      p "comparison after #{number}, #{key}: #{count == 0}"
      if (count == 0)
        return array
      end
    end

    p array
  end

  array
end

p "before: #{example}"
p "after: #{bubble_sort(example)}"
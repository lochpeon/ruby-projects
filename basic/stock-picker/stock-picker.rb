def stock_picker(stocks)

  array_of_values = Array.new(stocks.length) {Array.new}

  stocks.each_with_index do |price_x, index_x|
    array.each_with_index do |price_y, index_y|
      if (index_y >= index_x) 
        array_of_values[index_x].push(price_y - price_x)
      else
        array_of_values[index_x].push(0)  
      end
    end
  end

  array_of_max_values = array_of_values.map { |array| array.max }
  max_value = array_of_max_values.max

  first = array_of_max_values.index(max_value)
  last = array_of_values[first].index(max_value)

  [first, last]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
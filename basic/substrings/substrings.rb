def substrings(string, array)
  string_lc = string.downcase
  array_of_words = string_lc.split

  array.reduce(Hash.new(0)) do |result, entry|
    array_of_words.each do |word|
      if (word.include?(entry))
        result[entry] += 1
      end
    end
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
def sub_strings(string, arr)
  #convert string to array
  string_arr = string.split(" ")
  dictionary = {}
  arr.each do |arr_item|
    string_arr.each do |item|
      if item.downcase.include?(arr_item.downcase)
        if dictionary[arr_item]
          dictionary[arr_item] += 1
        else
          dictionary[arr_item] = 1
        end
      end
    end
  end
  dictionary
end


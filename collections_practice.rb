def begins_with_r(array)
  array.all? do |word|
    word.downcase.chr == 'r'
  end
end

def contain_a(array)
  array.select do |word|
    word.include?('a')
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.reject do |word|
    word.class != String
  end
end

def count_elements(array)
  count = Hash.new(0)
  array.collect do |element|
    count[element] += 1
  end
  count.collect do |hash, num|
    hash[:count] = num
  end
  count.keys
end

def merge_data(keys, data)
  keys.each do |names|
    data.each do |hash|
      names.merge!(hash[names[:first_name]])
    end
  end
end

def find_cool(array)
  array.select {|word| word if word.has_value?("cool")}
end

def organize_schools(array)
  by_location = {}
  array.each do |school, location_hash|
    location_hash.each do |symbol, location|
      if by_location[location] == nil
        by_location[location] = [school]
      else
        by_location[location] << school
      end
    end
  end
  by_location
end
















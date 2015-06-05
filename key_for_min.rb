# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  # code goes here
  if !name_hash.empty? #if the hash isn't empty, continue with the code

    current_min_key = name_hash.first[0] #set a variable in the method scope, but outside the block scope, so the block can modify it and the method can return it
    current_value = name_hash.first[1] #one variable for the first value we are going to compare, and the first key for that value

    name_hash.each do |property, value| #for each value in the hash, compare to the first one. if it is less than the first one, reset current_value to that and continue
      if value < current_value
        current_min_key = property
        current_value = value
      end
    end
    current_min_key #when the method is done, current_value is set to the lowest possible value, and current_min_key is the key that goes with that

  end

end

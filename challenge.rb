def find_range(num, min, max)
  arr_of_range = []
  old_not_found = 0
  new_not_found = 0
  (min...max).each do |n|
    if(num.include?(n))
      if old_not_found == nil
        next
      elsif new_not_found != nil
        arr_of_range << "#{old_not_found} => #{new_not_found}"
        old_not_found = nil
        new_not_found = nil
      else
        arr_of_range << "#{old_not_found}"
        old_not_found = nil
        new_not_found = nil
      end
    else
      if old_not_found != nil
        old_not_found = n
      else
        new_not_found = n
      end
    end    
  end
  arr_of_range
end

p find_range([1, 4, 10], 1, 11)
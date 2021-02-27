def find_range(num, min, max)
  arr_of_range = []
  prev_not_found = nil
  next_not_found = nil

  (min..max).each do |n|
    if(num.include?(n))
      if prev_not_found == nil
        next
      elsif next_not_found != nil
        arr_of_range << "#{prev_not_found} => #{next_not_found}"
      else
        arr_of_range << prev_not_found.to_s
      end
      prev_not_found = nil
      next_not_found = nil
    elsif prev_not_found != nil
      next_not_found = n
    else
      prev_not_found = n
    end
  end

  if prev_not_found && next_not_found
    arr_of_range << "#{prev_not_found} => #{next_not_found}"
  end

  arr_of_range
end

lower = 2
upper = 20

p find_range([1, 4, 10, 12, 14, 17], lower, upper)

# ["2 => 3", "5 => 9", "11", "13", "15 => 16", "18 => 20"]
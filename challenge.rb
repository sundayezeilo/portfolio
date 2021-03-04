def find_range(num, min, max)
  arr_of_range = []
  prev_not_found = nil
  next_not_found = nil
  num_hash = {}
  num.each { |n| num_hash[n.to_s] = n }

  (min..max).each do |n|
    if num_hash[n.to_s]
      next unless prev_not_found

      if next_not_found
        arr_of_range << "#{prev_not_found} => #{next_not_found}"
      else
        arr_of_range << prev_not_found.to_s
      end
      prev_not_found = nil
      next_not_found = nil
    elsif prev_not_found
      next_not_found = n
    else
      prev_not_found = n
    end
  end

  arr_of_range << "#{prev_not_found} => #{next_not_found}" if prev_not_found && next_not_found

  arr_of_range
end

lower = 2
upper = 20

p find_range([1, 4, 10, 12, 14, 17], lower, upper)

# ["2 => 3", "5 => 9", "11", "13", "15 => 16", "18 => 20"]

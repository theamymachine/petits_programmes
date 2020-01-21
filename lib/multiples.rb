def is_multiple_of_3_or_5?(current_number)
  if current_number %3 == 0 || current_number %5 == 0
    return true
  else 
    return false
  end 
end

def sum_of_3_or_5_multiples(final_number)
    if final_number.integer? && final_number >= 0 
    return (0...(final_number)).to_a.keep_if { |n| is_multiple_of_3_or_5?(n)}.sum
  else
    return "Try again, with a whole number bigger than 0 and smaller than 1000!"
  end
end

puts sum_of_3_or_5_multiples(8)

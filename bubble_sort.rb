def bubble_sort (number_list)
  #Set up the flags for the until loop
  swapped = true
  end_of_sort_range = number_list.length - 2

  until swapped == false
    pass_count += 1
    swapped = false
    (0..end_of_sort_range).each do |index|
      first_number, second_number = number_list[index], number_list[index + 1]
      if first_number > second_number
        number_list[index], number_list[index + 1] = second_number, first_number
        swapped = true
      end
    end
  end_of_sort_range -= 1
  end
number_list
end

def bubble_sort_by (input_list)

  swapped = true
  end_of_sort_range = input_list.length - 2
  pass_count = 0

  until swapped == false
    pass_count += 1
    swapped = false
    (0..end_of_sort_range).each do |index|
      first_element, second_element = input_list[index], input_list[index + 1]

      if yield(first_element, second_element) > 0
        input_list[index], input_list[index + 1] = second_element, first_element
        swapped = true
      end
    end
  end_of_sort_range -= 1
  end
input_list
end


puts bubble_sort([5,1,4,2,8])

puts (bubble_sort_by(["hi", "hello", "hey"]) do |left,right|
  left.length - right.length
end)

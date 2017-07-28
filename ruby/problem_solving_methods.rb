# Release 0:
def search_array(array, number)
    search_result = Array.new
    count = 0
    while count < array.length
        if number == array[count]
            return search_result.push(count)
            count += 1
        else
            count += 1
        end
    end
end
array = [23, 543, 24, 2, 9, 17]
puts search_array(array, 9)
puts " "


# Release 1:
def fib_generator(number)
    fib_array = Array.new(number)
    counter = 0

    while counter < fib_array.length
        if counter == 0
            fib_array[counter] = counter
            counter += 1
        elsif counter == 1
            fib_array[counter] = counter
            counter += 1
        else
        fib_array[counter] = (fib_array[counter -1] + fib_array[counter -2])
        counter += 1
        end
    end  
    return fib_array  
end

puts fib_generator(100)
puts " "

# Release 2: Bubble Sort (ascending order)
test_array = [51, 14, 9, 2, 87, 62, 17, 102, 204, 73, 100, 281]
def bubble_sort(array)
    counter = 0
    loop do
        swapped = false
        while counter < (array.length) -1
            if array[counter] > array[counter+1]
                array[counter], array[counter+1] = array[counter+1], array[counter]
                swapped = true
            end
            counter += 1
        end
        if swapped == false
            break
        end
        bubble_sort(array)
    end
    return array
end
puts "Original Array: #{test_array}"
puts "Sorted Array: #{bubble_sort(test_array)}"

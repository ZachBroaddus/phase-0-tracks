# Release 0:
def search_array(array, number)
    # Attempt 1: if statement search
    # array.each {|v|
    #   if array[v] == number
    #       search_result = array[number]
    #   else
    #       search_result = nil
    #   end}
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
p search_array(array, 3)

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
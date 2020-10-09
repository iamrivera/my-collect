require 'pry'

def my_collect(array)
   if block_given?
     collection = []
     i = 0 
        while i < array.length 
            yield(array[i])
            collection << yield(array[i])
            i += 1
        end
        collection
    else
        array
    end
end



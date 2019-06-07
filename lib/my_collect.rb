def my_collect(array)
    i = 0

    new_array = []
    while i < array.length
        return_value = yield(array[i])
        new_array << return_value
        i = i + 1
    end

    new_array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end

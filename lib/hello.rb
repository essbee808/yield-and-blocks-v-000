array = %w(Tim, Tom, Jim)

def hello_t(array)
  if block_given?
  i = 0
  
    while i < array.length
      yield array[i]
      i = i + 1
    end
  
  array
  
  else
    puts "Hey! No block was given!"
  end
end

#=> call method with array of names as an argument
#=> accompany that method call with a block that accepts a name parameter
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end

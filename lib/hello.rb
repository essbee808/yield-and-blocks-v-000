array %w(Tim, Tom, Jim)

def hello_t(array)
  i = 0
  
  while i < array.length
  yield array[i]
  i = i + 1
  end
end

hello_t(["Tim", "Tom", "Jim"]) do |name|

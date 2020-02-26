def for_each_element array
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

for_each_element(numbers) { |element| puts "element: #{element}" }

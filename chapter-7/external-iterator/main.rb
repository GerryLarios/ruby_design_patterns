class ArrayIterator
  def initialize array
    @array = array
    @index = 0
  end

  def has_next?
    @index < @array.length
  end

  def item
    @array[@index]
  end

  def next_item
    value = item
    @index += 1
    value
  end
end

colors = ['blue', 'red', 'green', 'white', 'black', 'purple', 'orange']

iterator = ArrayIterator.new colors

while iterator.has_next?
  puts "item #{iterator.next_item}"
end

def merge(array_1, array_2)
  merged = []
  iterator_1 = ArrayIterator.new array_1
  iterator_2 = ArrayIterator.new array_2

  while(iterator_1.has_next? && iterator_2.has_next?)
    if iterator_1.item < iterator_2.item
      merged << iterator_1.next_item
    else
      merged << iterator_2.next_item
    end
  end

  while iterator_1.has_next?
    merged << iterator_1.next_item
  end

  while iterator_2.has_next?
    merged << iterator_2.next_item
  end
  merged
end

puts merge([1,2,3,4,5], [10,20,30,40,50])

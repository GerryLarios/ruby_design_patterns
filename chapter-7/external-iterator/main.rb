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

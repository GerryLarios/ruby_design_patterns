### Lambda
hello = lambda do
  puts 'Hello, world!'
  puts 'I am inside a lambda'
end
hello.call

### Proc can change the variable value
name = 'Gerry'
puts name
set_name = Proc.new do
  name = 'Manuel'
end

set_name.call
puts(name)

### lambda can return a value
return_24 = lambda { 24 }
puts(return_24.call)

### Lambda receives parameters 
multiply = lambda { |x, y| x * y }
result = multiply.call(20, 3)
puts result

### Yield
def run_it
  puts "Before the yield"
  yield
  puts "After the yield"
end

run_it do
  puts 'Coming to you from inside the block'
end

### Yield with parameters
 def run_it_parameter
   puts 'Before the yield'
   yield(24)
   puts 'After the yield'
 end

 run_it_parameter do | x |
   puts 'Inside the proc'
   puts "The value of x is #{x}"
 end

### Block as parameter
 def run_block(&block)
   puts 'Before the call'
   block.call(24)
   puts 'After the call'
 end

 my_proc = lambda { | x | puts "The value of x is #{x}" }
 run_block(&my_proc)

require_relative 'manufacture_cake'

puts Manufacture.new.get_time_required

require_relative 'composite'
require_relative 'task'

composite = Composite.new('Example')
composite << Task.new('Task example')
puts composite.get_time_required
puts composite[0]
composite[1] = Task.new('Another task')

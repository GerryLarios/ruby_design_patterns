require_relative 'manufacture_cake'

manufacture = Manufacture.new
puts "total time required = #{manufacture.get_time_required}"
puts "total basic tasks = #{manufacture.get_total_tasks}"

require_relative 'composite'
require_relative 'task'

composite = Composite.new('Example')
composite << Task.new('Task example')
puts composite.get_time_required
puts composite[0]
composite[1] = Task.new('Another task')

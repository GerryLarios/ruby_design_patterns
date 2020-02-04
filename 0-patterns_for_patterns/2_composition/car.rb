require_relative 'vehicle'

# bad
#class Car < Vehicle
#  def drive
#    start_engine
#    puts "Driving..."
#    stop_engine
#  end
#end

# Good
require_relative 'engine'

class Car
  
  def initialize
    @engine = Engine.new
  end

  def drive
    @engine.start
    puts "Driving..."
    @engine.stop
  end

end

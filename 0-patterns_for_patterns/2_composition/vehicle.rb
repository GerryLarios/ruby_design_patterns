require_relative 'movable_object'

class Vehicle < MovableObject

  def start_engine
    puts 'Start engine'
  end

  def stop_engine
    puts 'Stop engine'
  end

end

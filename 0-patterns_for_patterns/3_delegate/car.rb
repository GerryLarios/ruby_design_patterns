require_relative 'engine'

class Car

  def initialize
    @engine = Engine.new
  end

  def drive
    start_engine
    puts 'Driving...'
    stop_engine
  end

  def start_engine
    @engine.start
  end

  def stop_engine
    @engine.stop
  end
end

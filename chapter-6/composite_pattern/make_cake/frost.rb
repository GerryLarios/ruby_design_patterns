Dir['../task.rb'].each { |file| require_relative file}

class Frost < Task 
  def initialize
    super 'Frost'
  end

  def get_time_required
    1.0
  end
end

Dir['../task.rb'].each { |file| require_relative file}

class FillPan < Task 
  def initialize
    super 'Fill Pan'
  end

  def get_time_required
    1.0
  end
end

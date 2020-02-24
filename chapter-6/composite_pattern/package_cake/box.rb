Dir['../task.rb'].each { |file| require_relative file }

class Box < Task
  def initialize
    super 'Box'
  end

  def get_time_required
    1.0
  end
end

Dir['../../task.rb'].each { |file| require_relative file }

class AddLiquids < Task
  def initialize
    super 'Add liquids'
  end

  def get_time_required
    1.0
  end
end

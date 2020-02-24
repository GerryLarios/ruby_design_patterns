Dir['../task.rb'].each { |file| require_relative file }

class Label < Task
  def initialize
    super 'Label'
  end

  def get_time_required
    1.0
  end
end

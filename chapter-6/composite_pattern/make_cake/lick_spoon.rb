Dir['../task.rb'].each { |file| require_relative file}

class LickSpoon < Task
  def initialize
    super 'Lick spoon'
  end

  def get_time_required
    1.0
  end
end

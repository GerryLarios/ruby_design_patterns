Dir['../../task.rb'].each { |file| require_relative file }

class MixTask < Task
  def initialize
    super 'Mix that batter up!'
  end

  def get_time_required
    3.0
  end
end

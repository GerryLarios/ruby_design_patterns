Dir['../task.rb'].each { |file| require_relative file}

class Bake < Task 
  def initialize
    super 'Bake'
  end

  def get_time_required
    1.0
  end
end

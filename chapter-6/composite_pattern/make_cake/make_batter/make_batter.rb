Dir['../../composite.rb'].each { |file| require_relative file}
require_relative 'add_dry_ingredients'
require_relative 'add_liquid'
require_relative 'mix'

class MakeBatter < Composite
  def initialize 
    super 'Make batter'
    add_sub_task AddDryIngredients.new
    add_sub_task AddLiquids.new
    add_sub_task MixTask.new
  end
end

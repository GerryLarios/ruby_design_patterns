Dir['../composite.rb'].each { |file| require_relative file}
require_relative './make_batter/make_batter'
require_relative 'fill_pan'
require_relative 'bake'
require_relative 'frost'
require_relative 'lick_spoon'

class MakeCake < Composite
  def initialize
    super 'Make cake'
    add_sub_task MakeBatter.new
    add_sub_task FillPan.new
    add_sub_task Bake.new
    add_sub_task Frost.new
    add_sub_task LickSpoon.new
  end
end

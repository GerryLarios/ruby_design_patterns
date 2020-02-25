Dir['../composite.rb'].each { |file| require_relative file }
require_relative 'box'
require_relative 'label'

class PackageCake < Composite
  def initialize
    super 'PackageCake'
    add_sub_task Box.new
    add_sub_task Label.new
  end
end

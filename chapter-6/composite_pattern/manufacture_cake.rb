require_relative 'composite'
require_relative './make_cake/make_cake'
require_relative './package_cake/package_cake'

class Manufacture < Composite
  def initialize
    super 'Manufacture cakes'
    add_sub_task MakeCake.new
    add_sub_task PackageCake.new
  end
end

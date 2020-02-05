require_relative 'formatter'

class PlainTextFormatter < Formatter

  def output(title, text)
    puts "*** #{title} ***"
    text.each { |line| puts line }
  end

end

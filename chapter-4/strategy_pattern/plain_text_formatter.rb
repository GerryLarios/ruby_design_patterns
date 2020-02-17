require_relative 'formatter'

class PlainTextFormatter < Formatter

  def output(context)
    title = context.title
    text = context.text
    puts "*** #{title} ***"
    text.each { |line| puts line }
  end

end

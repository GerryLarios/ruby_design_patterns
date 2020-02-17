require_relative 'formatter'

class PlainTextFormatter
  def output(context)
    title = context.title
    text = context.text
    puts "*** #{title} ***"
    text.each { |line| puts line }
  end
end

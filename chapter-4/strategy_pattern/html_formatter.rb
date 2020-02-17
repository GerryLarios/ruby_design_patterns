require_relative 'formatter'

class HTMLFormatter < Formatter
  def output(context)
    title = context.title
    text = context.text
    puts '<html>'
    puts "\t<head>"
    puts "\t\t<title>#{title}</title>"
    puts "\t<head>"
    puts "\t<body>"
    text.each { |line| puts "\t\t<p>#{line}</p>"}
    puts "\t</body>"
    puts '</html>'
  end
end

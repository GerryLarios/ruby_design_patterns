require_relative 'html_formatter'
require_relative 'plain_text_formatter'
require_relative 'report'

HTML_FORMATTER = lambda do | context |
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

report = Report.new &HTML_FORMATTER
report.output

PLAIN_FORMATTER = lambda do | context |
  title = context.title
  text = context.text
  puts "*** #{title} ***"
  text.each { |line| puts line }
end

report.formatter = PLAIN_FORMATTER
report.output

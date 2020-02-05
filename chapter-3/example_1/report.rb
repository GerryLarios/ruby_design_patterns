class Report
  
  def initialize
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well.']
  end

  def output
    puts "<html>"
    puts "\t<head>"
    puts "\t\t<title>#{@title}</title>"
    puts "\t<head>"
    puts "\t<body>"
    @text.each { |line| puts "\t\t<p>#{line}</p>"}
    puts "\t</body>"
    puts "<html>"
  end

end

report = Report.new
report.output

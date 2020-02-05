class Report
  
  def initialize
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well.']
  end

  def output(format)
    if format == :plain
      puts "*** #{@title} ***" 
    elsif format == :html
      puts "<html>"
      puts "\t<head>"
      puts "\t\t<title>#{@title}</title>"
      puts "\t<head>"
      puts "\t<body>"
    else
      raise "Unknown format: #{format}"
    end

    @text.each do |line|
      if format == :plain
        puts line
      else
        puts "\t\t<p>#{line}</p>"
      end
    end 
    
    if format == :html
      puts "\t</body>"
      puts "</html>"
    end
  end

end

report = Report.new
report.output(:plain)
report.output(:html)
report.output(:csv)

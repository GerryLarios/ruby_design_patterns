class Report
  
  def initialize
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well.']
  end

  def output
    start
    head
    body_start
    body
    body_end
    output_end
  end

  def start
    raise 'Called abstract method: start'
  end

  def head
    raise 'Called abstract method: head'
  end

  def body_start
    raise 'Called abstract method: body_start'
  end

  def body
    @text.each { |line| print_line(line)}
  end

  def body_end
    raise 'Called abstract method: body_end'
  end

  def output_end
    raise 'Called abstract method: output_end'
  end

  def print_line
    raise 'Called abstract method: print_line'
  end

end

report = Report.new
report.output
#report.output(:plain)
#report.output(:html)
#report.output(:csv)

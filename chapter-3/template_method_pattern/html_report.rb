require_relative 'report'

class HTMLReport < Report

  def start
    puts '<html>'
  end

  def head
    puts "\t<head>"
    puts "\t\t<title>#{@title}</title>"
    puts "\t</head>"
  end

  def body_start
    puts "\t<body>"
  end

  def print_line(line)
    puts "\t\t<p>#{line}</p>"
  end

  def body_end
    puts "\t</body>"
  end

  def output_end
    puts '</html>'
  end

end

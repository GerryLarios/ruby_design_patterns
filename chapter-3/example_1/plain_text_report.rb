require_relative 'report'

class PlainTextReport < Report

  def start
  end

  def head
    puts "*** #{@title} ***"
  end

  def body_start
  end

  def print_line(line)
    puts "#{line}"
  end

  def body_end
  end

  def output_end
  end

end

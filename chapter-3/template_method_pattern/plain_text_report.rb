require_relative 'report'

class PlainTextReport < Report

  def head
    puts "*** #{@title} ***"
  end

  def print_line(line)
    puts "#{line}"
  end

end

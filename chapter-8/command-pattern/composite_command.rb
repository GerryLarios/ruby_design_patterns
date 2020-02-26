require_relative 'command'

class CompositeCommand < Command
  def initialize
    @commands = []
  end

  def << cmd
    @commands << cmd
  end

  def execute
    @commands.each { | cmd | cmd.execute }
  end

  def description
    @commands.reduce("") { | str, cmd | str + "#{cmd.description} \n" }
  end
end

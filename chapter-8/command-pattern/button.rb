class Button
  attr_accessor :command

  def initialize &block 
    @command = block 
  end

  # events
  def on_click
    @command.call if @command
  end
end

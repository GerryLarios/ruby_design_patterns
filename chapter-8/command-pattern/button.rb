class Button
  attr_accessor :command

  def initialize command
    @command = command
  end

  # events

  def on_click
    @command.execute if @command
  end
end

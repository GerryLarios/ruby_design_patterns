require_relative 'button'
require_relative 'save_command'

Button.new(SaveCommand.new).on_click

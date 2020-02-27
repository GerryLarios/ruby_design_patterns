require_relative 'button'
require_relative 'save_command'

# Button.new(SaveCommand.new).on_click

btn = Button.new { puts 'You clicked on the button [PROC]' }
btn.on_click

require_relative 'manipulation_commands'
require_relative 'composite_command'

createFile = CreateFile.new('example.txt', 'Creating a file with commands')
copyFile = CopyFile.new('example.txt', 'example_1.txt')
deleteFile = DeleteFile.new('example.txt')

cmds = CompositeCommand.new
cmds << createFile
cmds << copyFile
cmds << deleteFile

puts cmds.description
cmds.execute

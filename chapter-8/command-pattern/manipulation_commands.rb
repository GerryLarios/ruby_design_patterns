require 'fileutils'
require_relative 'command'

class CreateFile < Command
  def initialize(path, contents)
    super "Create file: #{path}"
    @path = path
    @contents = contents
  end

  def execute
    file = File.open(@path, 'w')
    file.write @contents
    file.close
  end
end

class DeleteFile < Command
  def initialize path
    super "DELETE file: #{path}"
    @path = path
  end

  def execute
    File.delete(@path)
  end
end

class CopyFile < Command
  def initialize(source, target)
    super "Copy file: #{source} to #{target}"
    @source = source
    @target = target
  end

  def execute
    FileUtils.copy(@source, @target)
  end
end


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

  def unexecute
    file.delete @path
  end
end

class DeleteFile < Command
  def initialize path
    super "DELETE file: #{path}"
    @path = path
  end

  def execute
    backup
    File.delete(@path)
  end

  def unexecute
    if @contents
      file = File.open(@path, 'w')
      file.write @contents
      file.close
    end
  end

  private

  def backup
    @contents = File.read(@path) if File.exists? @path
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
  
  def unexecute
    File.delete(@target)
  end
end




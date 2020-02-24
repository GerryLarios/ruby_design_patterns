require_relative 'task'

class Composite < Task
  def initialize name
    super name
    @sub_tasks = []
  end

  def add_sub_task task
    @sub_tasks << task
  end

  def << task
    @sub_tasks << task
  end

  def [] index
    @sub_tasks[index]
  end

  def []= index, new_task
    @sub_tasks[index] = new_task
  end

  def remove_sub_task task
    @sub_tasks.delete task
  end

  def get_time_required
    @sub_tasks.reduce(0) { |total, task| total + task.get_time_required }
  end
end

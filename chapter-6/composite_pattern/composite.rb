require_relative 'task'

class Composite < Task
  def initialize name
    super name
    @sub_tasks = []
  end

  def add_sub_task task
    @sub_tasks << task
    task.parent = self
  end

  def << task
    @sub_tasks << task
    task.parent = self
  end

  def [] index
    @sub_tasks[index]
  end

  def []= index, task
    @sub_tasks[index] = task
    task.parent = self
  end

  def remove_sub_task task
    @sub_tasks.delete task
    task.parent = nil
  end

  def get_time_required
    @sub_tasks.reduce(0) { |total, task| total + task.get_time_required }
  end

  def get_total_tasks
    @sub_tasks.reduce(0) { |total, task| total + task.get_total_tasks }
  end
end

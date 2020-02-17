module Subject
  def initialize
    @observers = []
  end

  def add(observer)
    @observers << observer
  end

  def delete(observer)
    @observers.delete(observer)
  end

  def notify
    @observers.each { |observer| observer.update(self) }
  end
end


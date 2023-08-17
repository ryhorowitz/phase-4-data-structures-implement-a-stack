# your code here
class Stack
  def initialize(limit = Float::INFINITY)
    @stack = []
    @limit = limit
  end

  def push(val)
    raise 'Stack Overflow' if at_limit?

    @stack.push val
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def size
    @stack.size
  end

  def empty?
    @stack.size == 0
  end

  def full?
    at_limit?
  end

  def search(val)
    @stack.index(val) ? (@stack.size - 1) - @stack.index(val) : -1
  end

  private

  def at_limit?
    @stack.size == @limit
  end
end

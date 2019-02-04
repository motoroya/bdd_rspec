class Stack

  def initialize
    @buffer = []
  end

  def push(value)
    @buffer.push(value)
    self
  end

  def length
    @buffer.length
  end

  def pop
    @buffer.pop
  end

  def to_a
    @buffer.clone
  end
end


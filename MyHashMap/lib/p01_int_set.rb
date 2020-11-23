class MaxIntSet
  def initialize(max)
    @store = Array.new(max) { false }
  end

  def insert(num)
    is_valid?(num)
    # first check if num is already in set, if it is not insert. If it is then remove it and insert new num.
  end

  def remove(num)
    is_valid?(num)
    # first search for num then remove num. 
  end
  #[true, false, true, true]  
  #[0   ,  1   ,  2  , 3   ]
  def include?(num) #include?(0)
    is_valid?(num)
    @store[num] == true 
    # asks if stor includes the num.
  end

  private

  def is_valid?(num)
    raise "out of bounds" if num > max 
  end

  # def validate!(num)
  # end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end

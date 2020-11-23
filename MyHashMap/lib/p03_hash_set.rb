class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    if !include?(num)
      self[num] << num
      @count += 1
    end
    if num_buckets < count
      resize!
    end
  end

  def include?(num)
    self[num].include?(num) 
  end

  def remove(num)
    if include?(num)
      self[num].delete(num) 
      @count -= 1
     end
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    new_hash = num.hash
    @store[new_hash % num_buckets]
  end

  def num_buckets
    @store.length
  end

  def resize!
    num_buckets = @store.length * 2
    old_backet = @store
    @store = Array.new(num_buckets){Array.new}
    @count = 0
    old_backet.each do |bucket|
      bucket.each do |num|
        insert(num)
      end
    end
  end
end

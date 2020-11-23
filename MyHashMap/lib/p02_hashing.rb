class Integer
  # Integer#hash already implemented for you
end
# same two array to produce same result, diff arrays diff results. Order matters.
# also efficency, not worrying about that here.
class Array
  
  def hash
     result = 0
    self.each_with_index do |el, idx|
      result += (idx ^ idx + 1)  
      result = result.hash + el.hash   
    end
    result
  end
  
end

class String
  def hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end

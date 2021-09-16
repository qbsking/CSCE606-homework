# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.length() ? arr.sum():0
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length() > 1
    return arr.max(2).sum()
  elsif arr.length() > 0
    return arr[0]
  else
    return 0
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length() > 1
    arr.each_with_index do |x,i|
      arr.each_with_index do |y,j|
        if i != j and x+y == n
          return true
        end
      end
    end
    return false
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size > 0
    "BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz".each_char { |c|
      if s[0] == c
        return true
      end
    }
    return false
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.size == 0
    return false
  end
  int_part = ""
  s.each_char { |c|
    if c == "0" or c == "1"
      int_part = int_part + c
    else
      return false
    end
  }
  return int_part.to_i(base=2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(s,p)
    if s.size == 0
      raise ArgumentError.new("isbn empty")
    end
    if p <= 0
      raise ArgumentError.new("price less or equal to 0")
    end
    @isbn = s
    @price = p
  end
  
  def isbn
    @isbn
  end
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    return sprintf('$%.2f', @price)
  end
end

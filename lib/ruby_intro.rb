# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each{|x|sum+=x}
  return sum;
end

def max_2_sum arr
  if arr.length ==0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  arr=arr.sort
  return arr[-1] + arr[-2]
end

#def sum_to_n? arr, n
  #(arr.empty? &&n.zero?) || arr.permutation(2).any? {|a,b| a + b ==n}
#end
def sum_to_n? arr,n
  return false if arr.empty? || n.zero?
  return true if arr.empty? && n.zero?
  arr.combination(2).any?{|a,b| a + b ==n}
end  

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return true if /^[^aeiou\W]/i === s 
  #return true if /^[^aeiou\W]/i === s 
  #consonant = /^[^aeiou\d\W_]/i
  #return true if consonant.match(s)
end

def binary_multiple_of_4? s
  /^[01]+$/.match(s) && s.to_i(2) % 4 == 0 ? true : false
end

# Part 3

class BookInStock
  attr_reader :isbn
  attr_accessor :price

  def Getisbn
    @isbn
  end

  def isbn=(isbn)
    @isbn=isbn
  end

  def Getprice
    @price
  end

  def price=(price)
    @price = Float(price)
  end

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty?||price<=0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return sprintf("$%2.2f", price)
  end


end

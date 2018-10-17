class Array
  def square
    map {|item| item ** 2}
  end

  def cube
    map {|item| item ** 3}
  end

  # def sum
  #   total = 0
  #   for item in self
  #     total += item
  #   end
  #   return total
  # end

  def average
    sum / length
  end

  def even
    select {|item| item if item % 2 == 0}
  end

  def odd
    select {|item| item if item % 2 != 0}
  end
end
class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size()
    @array.length
  end

  def reverse()
    @array.reverse!
  end

  def max()
    @array.max
  end

  def min()
    @array.min
  end

  def desc()
    @array.sort! { |a, b| b <=> a}
  end

  def asc()
    @array.sort! { |a, b| a <=> b}
  end

  def odd()
    output = []
    @array.each do |x| 
        if ((x%2) != 0)
            output << x
        end
    end 
    output
  end

  def multiple_to_three()
    output = []
    @array.each do |x| 
        if ((x%3) == 0)
            output << x
        end
    end 
    output
  end

  def uniq
    @array.uniq!
  end

  def devide_on_ten
    output = []
    @array.each { |x| output << x.fdiv(10) }
    output
  end

  def chars
    ab = (:a..:z).to_a
    @array.collect { |x| x = ab[x-1] }
  end

  def switch
    i_min = @array.index(@array.min)
    i_max = @array.index(@array.max)
    max = @array[i_min]
    @array[i_min] = @array[i_max]
    @array[i_max] = max
    @array
  end

  def before_min
    i_min = @array.index(@array.min)
    @array[0...i_min]
  end

  def three_smallest
    @array.sort.uniq[0..2]
  end
end
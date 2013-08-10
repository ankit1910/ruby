def fibonaci(max)
  first, second = 0, 1
  while first < max
    yield first
    first, second = second, first + second
  end
end
fibonaci(1000) {|num| puts num }

def fibonaci()
  first, second, max = 0,1,1000
  while first < 1000
    yield(first)
    temp, first = first, second
	  second += temp
  end
end
fibonaci() {|num| puts num}

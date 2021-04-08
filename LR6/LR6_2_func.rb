def print(e)  
  res = integral.find do |res, prevres|
    (prevres - res).abs < e
  end
  res[0]
end 

def func(x)
  y = Math.log(x)/x
end

def integral
  Enumerator.new do |yielded|
    prevres = 1
    res = 0
    fin = 2
    step = 0.1

    loop do
      yielded.yield res, prevres
      prevres = res
      res = 0
      start = 1
      while start < fin do
        res += func(start+step)*step
        start += step
      end
      step /= 10

    end

    return res
  end
end
def func(x)
	y = Math.log(x)/x
end

def integral(e)
	prevres = 1
	res = 0
	fin = 2
	step = 0.1
	while (prevres-res).abs > e do
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
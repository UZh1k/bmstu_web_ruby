def intg (n, a, b)
	res = 0
	start = a
	fin = b
	step = (b-a)/n.to_f
	while start < fin do
		res += [yield(start+step), yield(start)].max*step
		start += step
	end
	p res
end

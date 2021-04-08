load "LR6_3_func.rb"

p ('Введите количествово шагов')
n = gets.to_i

p '1 - методом блоков, 2 - передачей лямбда-функции'

case gets.chomp
when "1"
	p ('Введите 1 - для sin(x)/x от 0.1 до 1 или 2 - tg(x+1)/(x+1) от 1 до 2')
	case gets.chomp
	when "1"
		intg(n, 0.1, 1) do |x|
			Math.sin(x)/x
		end
	when "2"
		intg(n, 1, 2) do |x|
			Math.tan(x+1)/(x+1)
		end
	end

when "2"
	p ('Введите 1 - для sin(x)/x от 0.1 до 1 или 2 - tg(x+1)/(x+1) от 1 до 2')
	case gets.chomp
	when "1"
		intg(n, 0.1, 1, &->(x) { Math.sin(x)/x })
	when "2"
		intg(n, 1, 2, &->(x) { Math.tan(x+1)/(x+1) })
	end
end
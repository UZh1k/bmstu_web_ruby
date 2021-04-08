load 'LR7_2_func.rb'

puts 'Введите длину, ширину и высоту через пробел'

params = gets.chomp.split.map { |x| Float x, exception: false }.compact

unless params.size == 3
  puts 'Некорректный ввод'
  exit 1
end

length, width, height = params
board = Board.new length, width
box = Box.new length, width, height

puts 'Параметры прямоугольника:'
puts "длина: #{board.length}, ширина: #{board.width}"

puts 'Параметры параллелепипеда:'
puts box.output
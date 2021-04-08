load "LR6_1_func.rb"

p ('Введите точность')
e = gets.to_f

p ('Результат - ' + integral(e).to_s)
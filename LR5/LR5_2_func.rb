def change(s, replace)
    s.split
    .each_with_index
    .map do |x, idx|
        if idx.even? && x.start_with?('л')
            nil
        elsif idx.odd? && x.start_with?('н') then
            replace
        else
            x
        end
    end
    .compact
    .join(' ')
end

def output(s, r)
    temp = change(s, r)
    puts('\nOriginal string: ' + s)
    puts('Changed string: ' + temp)
end

def input()
	s = ""
	ARGF.each_line do |line|
		s += line
	end
	s
end
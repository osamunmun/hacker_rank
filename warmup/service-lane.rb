width = []
answer = []
ARGF.each_with_index do |line, i|
  if i == 0
    next
  elsif i == 1
    width = line.split.map(&:to_i)
  else
    answer << width[line.split.first.to_i..line.split.last.to_i].min
  end
end
puts answer

__END__
8 5
2 3 1 2 3 2 3 3
0 3
4 6
6 7
3 5
0 7

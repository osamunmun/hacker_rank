ARGF.each_with_index do |line, i|
  next if i == 0
  height = 1
  (1..line.to_i).each do |n|
    n % 2 == 0 ? height += 1 : height *= 2
  end
  puts height
end

__END__
2
3
4

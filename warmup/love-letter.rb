require 'pry'
def checkPalindrome(word)
  size = word.length / 2
  (word[0..size] == word.reverse[0..size])
end
def count(word)
  base = ('a'..'z').to_a.join
  size = word.size / 2
  count = 0
  word.split('').each_with_index do |c,i|
    break if i == size
    count += (base.index(c) - base.index(word.reverse[i])).abs
  end
  count
end
answer = []
ARGF.each_with_index do |line, i|
  count = 0
  if i == 0
    next
  else
    answer << count(line.chomp)
  end
end
puts answer

__END__
3
heubsbn

# https://paiza.jp/works/challenges/54/retry
s = gets.chomp.to_s

# 変数sの文字列を1文字ずつ評価する
s.each_char do |i|
  case i
  when "A" 
    print 4
  when "E" 
    print 3
  when "G"
    print 6
  when "I" 
    print 1
  when "O" 
    print 0
  when "S" 
    print 5
  when "Z" 
    print 2
  else
    print i
  end
end
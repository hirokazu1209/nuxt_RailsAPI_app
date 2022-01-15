https://paiza.jp/works/mondai/prob60/total_value_1

n = gets.to_i

n.times do |i|
  num= gets.chomp.map(&:to_s)
  ans = i += num 
  puts ans
end

【Rubyの場合】
num = gets.chomp.to_i
(0...num).each { puts gets.chomp }

【PHPの場合】
$n = trim(fgets(STDIN));

for ($i = 0; $i < $n; $i++) {
  $a = trim(fgets(STDIN));
  echo $a . "\n";
}
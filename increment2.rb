https://paiza.jp/works/mondai/prob60/5_or_more_1

【Rubyの場合】
num = gets.chomp.to_i

(1..num).each do |i|
  output = gets.chomp.to_i
  puts output
end

【PHPの場合】
$n =trim(fgets(STDIN));

for ($i = 0; $i < $n; $i++) {
  $a = trim(fgets(STDIN));
  echo $a . "\n";
}
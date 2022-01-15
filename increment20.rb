# https://paiza.jp/works/mondai/prob60/substring_upper_2

str = gets.chomp.to_s
puts str.length

正誤：◎

【Rubyの場合】
line = gets.chomp
puts line.length

【PHPの場合】
$s = trim(fgets(STDIN));
echo mb_strlen($s) . "\n";
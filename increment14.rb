# https://paiza.jp/works/mondai/prob60/substring_2

s = gets.chomp.to_s
puts s.length

正誤：◎

【Rubyの場合】
line = gets.chomp
puts line.size

【PHPの場合】
$s = trim(fgets(STDIN));
echo mb_strlen($s) . "\n";
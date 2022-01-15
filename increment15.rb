https://paiza.jp/works/mondai/prob60/substring_3

s = gets.chomp
str = s.slice(0)
puts str

正誤：◎

【Rubyの場合】
line = gets.chomp
puts line[0]

【PHPの場合】
$s = trim(fgets(STDIN));
echo mb_substr($s, 0, 1) . "\n";

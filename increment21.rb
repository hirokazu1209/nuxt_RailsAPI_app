# https://paiza.jp/works/mondai/prob60/substring_upper_3

str = gets.chomp.to_s
puts str[0]

正誤：◎

【Rubyの場合】
同上

【PHPの場合】
$s = trim(fgets(STDIN));
echo mb_substr($s, 0, 1) . "\n";
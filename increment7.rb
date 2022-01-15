https://paiza.jp/works/mondai/prob60/total_value_0
# 数字の文字列を数値オブジェクトに変換するメソッド。小数を整数にすることもできる。
n = gets.to_i

ans = n += 1

puts ans

【Rubyの場合】
num = gets.chomp.to_i

puts num + 1

【PHPの場合】
$num = trim(fgets(STDIN));

echo $num + 1 . "\n";
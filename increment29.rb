# https://paiza.jp/works/mondai/prob60/string_count_9

s = gets.chomp
str = gets.chomp.to_s

puts str.count(s)

# 正誤：正

# 【PHPの場合】
$c = trim(fgets(STDIN));
$s = trim(fgets(STDIN));

$ans = 0;

for ($i = 0; $i < mb_strlen($s); $i++) {
  if (mb_sublen($s, $i, 1) === $c) {
    $ans++
  }
}

echo $ans . "\n"

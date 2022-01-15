# https://paiza.jp/works/mondai/prob60/count_string_2

line = gets.chomp
line.each_char { |str| puts str }

# 正誤：正

# 【Rubyの場合】
str = gets.chomp.split('')
str.each { |char| puts char }

# 【PHPの場合】
$s = trim(fgets(STDIN));

for ($i = 0; $i < mb_strlen($s); $i++) {
  echo mb_sublen($s, $i, 1) . "\n";
}
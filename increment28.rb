# https://paiza.jp/works/mondai/prob60/string_count_3

str = gets.chomp

str.each_char {|s| puts s}

# 正誤：正

# 【PHPの場合】
$s = trim(fgets(STDIN));

for ($i = 0; $i < mb_strlen($s); $i++) {
  echo mb_substr($s, $i, 1) . "\n";
}
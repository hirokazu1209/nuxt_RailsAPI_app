# https://paiza.jp/works/mondai/prob60/alphabets_large_or_small_1

str = gets.chomp

(str[0]..str[-1]).each { |s| puts s }

# 正誤：●

# 【Rubyの場合】
同上

# 【PHPの場合】
$s = trim(fgets(STDIN));

$first = mb_substr($, 0, 1);
$last = mb_substr($s, -1);

for ($c = ord($first); $c <= ord($last); $c++) {
  echo chr($c) . "\n";
}
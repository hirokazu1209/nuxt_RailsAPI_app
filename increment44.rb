
# https://paiza.jp/works/mondai/prob60/sort_add_4

# 数字を入力
num = gets.chomp.to_i

# 1からnum回までを繰り返す
(1..num).each do
  line = gets.chomp.split(' ')
  # lineの1番目の値を出力する
  puts line[1]
end


# 正誤：✖️

# 【Rubyの場合】
# 同上
# 【PHPの場合】
$n =trim(fgets(STDIN));

for ($i = 0; $i < $n; $i++) {
  [$s, $d] = explode(' ', trim(fgets(STDIN)));
  echo $d . "\n";
}
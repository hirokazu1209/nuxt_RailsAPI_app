# https://paiza.jp/works/mondai/prob60/sort_asc_2

# 入力数値を変数で持たさなくても利用できる
gets.chomp.to_i

# 上記で入力した数値分、配列として格納される
array = gets.chomp.split(' ')

# 0から配列で入力した要素まで値を取得する
(0..(array.size - 1)).each { |i| array[i] = array[i].to_i }

puts array.sort

# 正誤：✖️

# 【Rubyの場合】
同上
# 【PHPの場合】
trim(fgets(STDIN));
$a = explode(' ', trim(fgets(STDIN)));

sort($a);

foreach ($a as $val) {
  echo $val . "\n";
}
https://paiza.jp/works/mondai/prob60/5_or_more_9

【Rubyの場合】
loop = gets.chomp.to_i
ans = 0
loop
(1..loop).each do |i|
  num = gets.chomp.to_i

  ans = ans + num if num >= 5
end

puts ans

# 5 以上の数値の和を記録する変数を ans とおき、0 で初期化します。
# 1 行目の入力を変数 n に代入し、n 回のループを回します。
# ループ内部で a_i を受け取り、5 以上であるかどうかを調べます。5 以上であれば ans に加算します。
# 最終的な ans が求める答えなので、ans を出力します。


【PHPの場合】
$n = trim(fgets(STDIN));

$ans = 0;

for ($i = 0; $i < $n; $i++) {
  $a = trim(fgets(STDIN));
  if ($a >= 5) {
    $ans += $a;
  }
}

echo $ans . "\n";
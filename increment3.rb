# https://paiza.jp/works/mondai/prob60/5_or_more_2

【Rubyの場合】
array =  [1, 3, 5, 6, 3, 2, 5, 23, 2]
ans = 0

array.each { |element| ans += element }

puts ans

【PHPの場合】
$array = [1, 3, 5, 6, 3, 2, 5, 23, 2];
$ans = 0;

foreach ($array as $i => $num) {
  $ans += $num;
}

echo $ans . "\n";
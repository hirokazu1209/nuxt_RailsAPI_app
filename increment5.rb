# https://paiza.jp/works/mondai/prob60/5_or_more_4

【Rubyの場合】
array = [4, 0, 5, -1, 3, 10, 6, -8]
ans = 0

array.each { |element| ans += element if element >= 5 }

puts ans

【PHPの場合】
$array = [4, 0, 5, -1, 3, 10, 6, -8];

$ans = 0;

foreach ($array as $i => $sum) {
  if ($num >= 5) {
    $ans += $num;
  }
}

echo $ans . "\n";
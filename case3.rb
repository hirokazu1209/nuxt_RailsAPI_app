
https://paiza.jp/works/mondai/steinsgate/quantity_of_experience_points_boss

# Rubyの場合
v = gets.split
N = v[0].to_i
K = v[1].to_f

total = 0
N.times do
  x = gets.to_f
  total += (x * 10).round
end

ans =
  if total / (K * 10).round == 0
    total / (K * 10).round
  else
    total / (K * 10).round + 1
  end
puts ans

# PHPの場合
[$n, $k] = explode('', trim(fgets(STDIN)));
$total = 0;
for ($i = 0; $i < $n; $i++) {
  $x = trim(fgets(STDIN));
  $total += round($x * 10);
}

$ans = (int)($total / round($k * 10));
if ($total % round($k * 10) !== 0) {
  $ans++;
}

echo $ans . "\n";






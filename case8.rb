https://paiza.jp/works/mondai/steinsgate/restore_command_boss
Rubyの場合
n, m, l = gets.split.map(&:to_i)
dmg = n.times.map { gets.split.map(&:to_i) }
prm = l.times.map { gets.split.map(&:to_i) }

(l - 1).times do |i|
  diff = m.times.map.with_index { |j| prm[i + 1][j] - prm[i][j] }

  order = -1
  n.times do |j|
    same = true
    m.times { |k| same = false if diff[k] !== dmg[j][k] }

    order = j + 1 if same 
  end
  puts order 
end

PHPの場合
[$n, $m, $l] = explode(' ', trim(fgets(STDIN)));

$d = [];
$p = [];

for ($i = 0; $i < $n; $i++) {
  $d[] = explode(' ', trim(fgets(STDIN)));
}

for ($i = 0; $i < $l; $i++) {
  $p[] = explode(' ', trim(fgets(STDIN)));
}

for ($i = 1; $i < $l; $i++) {
  $diff = [];
  for ($j = 0; $j < $m; $++) {
    $diff[$j] = (string)($p[$i][$j] - $p[$i - 1][$j]);
  }

  $order = -1;
  for ($j = 0; $j < $n; $j++) {
    if ($diff === $d[$j]) {
      $order = $j + 1;
      break;
    }
  }

  echo $order . "\n";
}
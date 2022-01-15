https://paiza.jp/works/mondai/steinsgate/moving_deadlock_step3

【Rubyの場合】
n, m, q = gets.split.map(&:to_i)

room = Array.new(n + 1, -1)
req = Array.new(n + 1, -1)
1.upto(m) do |i|
  s, t = gets.split.map(&:to_i)
  room[s] = i
  req[i] = t
end

q = [1]
while true
  x = q.last

  break if room[req[x]] == -1
  break if room[req[x]] == x

  q.push room[req[x]]
end

puts q.reverse.join(' ')

【PHPの場合】
[$n, $m] = explode(' ', trim(fgets(STDIN)));

$s = $t = [-1];
$room = array_fill(0, $n + 1, 0);

for ($i = 1; $i <= $m; $i++) {
  [$s_i, $t_i] = explode(' ', trim(fgets(STDIN)));
  $s[] = $s_i;
  $t[] = $t_i;
  $room[$s_i] = $i
}

$players = [];
$p = 1;

for(;;) {
  $players[] = $p;
  if ($room[$t[$p]] == 0) {
    break;
  }
  if ($room[$t[$p]] == 1) {
    break;
  }
  $p = $room[$t[$p]];
}

krsort($players);
echo implode(' ', $players) . "\n";

答えを表す配列 players を用意し、部屋の移動をするプレイヤーを変数 P で保存します。P の初期値は 1 とします。
移動先の部屋が空くまで、players に P を追加し、P に "移動先の部屋に滞在しているプレイヤー" を代入することを繰り返します。
部屋を移動できるかの判定や、移動先の部屋に滞在しているプレイヤーの番号の取得は、以下のようにします。
それぞれの席に滞在しているプレイヤーの番号を配列 room[] で管理します。
room[T_P] で、移動先の部屋に滞在しているプレイヤーの番号が得られます。
room[T_P] == 0 で、移動先の部屋にプレイヤーが滞在していないことを判定できます。
移動先のプレイヤーから順に部屋の移動をするため、players は逆順で出力します。

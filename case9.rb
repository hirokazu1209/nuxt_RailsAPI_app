https://paiza.jp/works/mondai/steinsgate/moving_deadlock_step1

N：部屋
M：プレイヤーの人数
Q：
i：i番目のプレイヤー
S_i：部屋



【Rubyの場合】
# n個の部屋、m人のプレイヤー、
n, m, q = gets.split.map(&:to_i)
room = m.times.map { gets.to_i }
# 配列の0番目の直前に-1を挿入する
room.insert(0, -1)
q.times do
  # e番目のプレイヤーが部屋tに移動できるか判定する処理
  e, t = gets.split.map(&:to_i)
  if room[e] == t
    puts 'Yes'
    next
  end

  1.upto(m) do |i|
    if i != e && room[i] == t
      puts 'No'
      break
    end

    puts 'Yes' if i == m
  end
end

【PHPの場合】
[$n, $m, $q] = explode(' ', trim(fgets(STDIN)));

$s = [-1];
for ($i = 1; $i <= $m; $i++) {
  $s[] = trim(fgets(STDIN));
}

for ($i = 0; $i < $q; $i++) {
  [$e, $t] = explode(' ', trim(fgets(STDIN)));
  if ($s[$e] == $t) {
    echo 'Yes' . "\n";
    continue;
  }
  for ($j =1; $j <= $m; $j++ ) {
    if ($j != $e && $s[$j] == $t) {
      echo 'No' . "\n";
      break;
    }
    if ($j == $m) {
      echo 'Yes' . "\n";
    }
  } 
}











それぞれ E_i 番目のプレイヤー (1 ≦ i ≦ Q) について、部屋を移動できるかの判定を以下のようにします。
S_{E_i} == T_i なら、部屋を移動しないので "Yes" を出力します。
S_j == T_i を満たす j (1 ≦ j ≦ M, j ≠ E_i) が存在するなら、部屋を移動できないので "No" を出力します。
上のどれにも当てはまらないなら、部屋を移動できるので "Yes" を出力します。
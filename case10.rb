https://paiza.jp/works/mondai/steinsgate/moving_deadlock_step2

【Rubyの場合】
n, m, q = gets.split.map(&:to_i)

#  n + 1 サイズの配列の中に初期値 -1 を入れる
# 部屋が空いているかどうかを配列で管理する
room = Array.new(n + 1, -1)
# 1からmまで1つずつ繰り返す
1.upto(m) do |i|
  s = gets.to_i
  room[s] = i
end

q.times do
  e, t = gets.split.map(&:to_i)
  # true：部屋が埋まっている false：部屋が空いている
  if room[t] == -1 || room[t] == e
    puts 'Yes'
  else
    puts 'No'
  end
end

【PHPの場合】
[$n, $m, $q] = explode(' ', trim(fgets(STDIN)));

$s = [-1];
$room = array_fill(0, $n + 1, false);
for ($i = 1; $i <= $m; $i++) {
  $s[] = trim(fgets(STDIN));
  $room[$s[$i]] = true;
}

for ($i = 0; $i < $q; $i++) {
  [$e, $t] = explode(' ', trim(fgets(STDIN)));
  if ($s[$e] == $t || !$room[$t]) {
    echo 'Yes' . "\n";
  } else {
    echo 'No' . "\n";
  }
}


前問の解説で紹介したプログラムでは、各質問に対して N 人のプレイヤーを見ていたため、全体の計算量は O(NQ) になり、この問題の制約では制限時間に間に合いません。
それぞれ E_i 番目のプレイヤー (1 ≦ i ≦ Q) について、部屋を移動できるかの判定を以下のようにします。
部屋が空いているかどうかを配列 room[] で管理します。
room[x] が true なら部屋 x が埋まっていて、false なら部屋が空いています。
S_{E_i} == T_i であるか、room[T_i] == false であるなら、部屋を移動できるので "Yes" を出力します。そうでないなら、部屋を移動できないので "No" を出力します。
このようにすることで、各質問に対して数回の計算で答えを求めることができ、全体の計算量は O(N+Q) となり制限時間に間に合います。
https://paiza.jp/works/mondai/steinsgate/moving_deadlock_step4

n, m, q = gets.split.map(&:to_i)

room = Array.new(n + 1, -1)
req = Array.new(n + 1, -1)
1.upto(m) do |i|
  s, t = gets.split.map(&:to_i)
  room[s] = i
  req[i] = t
end

ans = false
q = [1]
while true
  x = q.last

  break if room[req[x]] == -1
  break if room[req[x]] == x
  if room[req[x]] == 1
    ans = true
    break
  end

  q.push room[req[x]]
end

if ans
  puts 'Yes'
else
  puts 'No'
  puts q.reverse!.join(' ')
end

問題文の条件 S_i ≠ S_j, T_i ≠ T_j (i ≠ j) から、次のことが言えます。
入力を (S_i, T_i) (1 ≦ i ≦ M) を辺とする、頂点が N 個で、 辺が M 本のグラフとしてみたとき、
デッドロックが発生していない ⇔ 頂点 1 を含む連結成分が直線型のグラフ (パス) になっている
デッドロックが発生している ⇔ 頂点 1 を含む連結成分が円形のグラフ (ループ) になっている
つまり, 1 番目のプレイヤーから始めて部屋の移動先にいるプレイヤーをたどっていったときに、1 番目のプレイヤーの元の部屋に戻ってきてしまうかどうかでデッドロックの発生を判定できます。
答えを表す配列 players を用意し、部屋の移動をするプレイヤーを変数 P で保存します。P の初期値は 1 とします。
デッドロックが発生するか、部屋を移動できることが確定するまで、players に P を追加し、P に "移動先の部屋に滞在しているプレイヤー" を代入することを繰り返します。
デッドロックの発生の判定、部屋を移動できるかの判定や、移動先の部屋に滞在しているプレイヤーの番号の取得は、以下のようにします。
それぞれの部屋に滞在しているプレイヤーの番号を配列 room[] で管理します。
room[T_P] で、移動先の部屋に滞在しているプレイヤーの番号が得られます。
room[T_P] == 0 で、移動先の部屋にプレイヤーが滞在していないことを判定できます。
room[T_P] == 1 で、1 番目のプレイヤーの元の部屋に戻ってきてしまったことを判定できます。特に P ≠ 1 のとき、これはデッドロックを表します。
移動先の部屋のプレイヤーから順に部屋の移動をするため、players は逆順で出力します。
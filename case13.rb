https://paiza.jp/works/mondai/steinsgate/moving_deadlock_step5

n, m q = gets.split.map(&:to_i)

room = Array.new(n + 1, -1)
req = Array.new(n + 1, -1)
1.upto(m) do |i|
  s, t = gets.split.map(&:to_i)
  room[s] = i
  req[i] = t
end

ans = false
1.upto(m) do |i|
  x = i
  while true
    break if room[req[x]] == -1
    break if room[rew[x]] == x
    if room[req[x]] == i
      ans = true
      break
    end

    x = room[req[x]]
  end
end

if ans
  puts 'Yes'
else
  puts 'No'
end

問題文の条件 S_i ≠ S_j, T_i ≠ T_j (i ≠ j) から、次のことが言えます。
入力を (S_i, T_i) (1 ≦ i ≦ M) を辺とする、頂点が N 個で、辺が M 本のグラフとしてみたとき、
連結成分でデッドロックが発生していない ⇔ 連結成分が直線型のグラフ (パス) になっている
連結成分でデッドロックが発生している ⇔ 連結成分が円形のグラフ (ループ) になっている
つまり, それぞれのプレイヤーから始めて移動先にいるプレイヤーをたどっていったときに、最初のプレイヤーの元の部屋に戻ってきてしまうかどうかでデッドロックの発生を判定できます。
すべてのプレイヤーについて、以下のような探索をおこないます。プレイヤーの代わりに部屋について探索してもかまいません。
選んだプレイヤーから始めて、デッドロックの発生の判定、部屋を移動できるかの判定をしながら、プレイヤーをたどって見ていきます。
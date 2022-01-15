# https://paiza.jp/works/mondai/prob60/tic_tac_toe_3

# からの配列boardを準備する
borad = []
# Dをresultに代入する
result = 'D'

# 5回値を入力する
(1..5).each { board.push(gets.chomp.split('')) }

# 0列目の要素から4列目の要素を繰り返す
(0..4).each do |i|
  # oの初期値を設定
  o = 0
  # xの初期値を設定
  x = 0
  # 配列boardの値を繰り返す
  board.each do |row|
    # もし配列のi列目の値がOの場合、oに1をカウントする
    if row[i] == 'O'
      o = o + 1
    # もし配列のi列目の値がXの場合、xに1をカウントする
    elsif row[i] == 'X'
      x = x + 1
    end
  end

  if o == 5
    result = 'O'
    break
  elsif x == 5
    result = 'X'
    break
  end
end

puts result

盤面を、各マスをboard[行][列]で参照できる形で二次元配列boardに格納します
ある配列について、各行のOとXの出現回数を数え、5回ならばその記号が縦に揃っているということ
その時、その記号が勝者の記号
全ての列について、全ての行の値を確認するので、2重ループを記述する

# 正誤：✖️

# 【Rubyの場合】
# 同上

# 【PHPの場合】
$board = [];

for ($i = 0; $i < 5; $i++) {
  $board[$i] = trim(fgets(STDIN));
}

for ($i = 0; $i < 5; $i++) {
  $o = $x = 0;

  for ($j = 0; $j < 5; $j++) {
      if ($board[$j][$i] === 'O') {
          $o++;
      } elseif ($board[$j][$i] === 'X') {
          $x++;
      }
  }

  if ($o === 5) {
      echo 'O' . "\n";
      return;
  } elseif ($x === 5) {
      echo 'X' . "\n";
      return;
  }
}

echo 'D' . "\n";
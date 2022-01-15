# a = {4 1 3 5 2}
# b = {12 2 6 5 -9}
# ans = b - a

# puts ans

# 配列の差分の計算方法がわからない
ブロック変数を使い、配列の内容を記述する
# 差分出力後の表示方法がわからない


# Rubyの場合
n = gets.to_i
a = gets.spilit.map(&:to_i)
b = gets.spilit.map(&:to_i)

n.times do |i|
  # 配列間で差分を計算
  ans = b[i] - a[i]
  # 改行はせずに配列内に値を出力していく
  print ans
  # 配列の値が繰り返しの値-1よりも少ない場合は、空白を出力し、大きい場合は改行する
  if i < n - 1
    print ' '
  else
    puts
  end
end

PHPの場合
$n = fgets(STDIN);
$a = explode(' ', trim(fgets(STDIN)));
$b = explode(' ', trim(fgets(STDIN)));

for ($i = 0; $i < $n; $i++) {
  $ans = $b[i] - $a[$i];
  echo $ans;
  if ($i + 1 === (int)$n) {
    echo $ans;
  } else {
    echo ' ';
  }
}







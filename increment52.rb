# https://paiza.jp/works/mondai/prob60/tic_tac_toe_1

# 配列O Xを準備
array = %w[O X]
# 文字を入力する
string = gets.chomp.split('')
# 入力した文字が全て同じ場合の結果'D'を準備する
result = 'D'

# arrayを繰り返す
array.each do |a|
  # 初期値0を準備する
  cnt = 0
  # 入力文字を繰り返す。配列Oとstringの文字を参照し、同じであればcntに1を追加する
  # Oの繰り返し処理の終了後、Xとstringの文字を参照する
  string.each { |s| cnt = cnt + 1 if s == a }
  # もし、cntが5以上の場合、aをresultに代入する
  result = a if cnt >= 5
end

puts result

# 正誤：✖️

# 【Rubyの場合】
# 同上
# 【PHPの場合】
$line = trim(fgets(STDIN));
if ($line === 'OOOOO') {
  echo 'O' . "\n";
} else {
  echo 'D' . "\n";
}
# https://paiza.jp/works/mondai/prob60/tic_tac_toe_4

board = []
result = 'D'

# 5行目まで値を入力する
(1..5).each { board.push(gets.chomp.split('')) }

# 斜めで記号が揃うパターンを繰り返す
# 1パターン目：
(1..2).each do |time|
  o = 0
  x = 0

  i = 0

  if time == 1
    j = 0
  else
    j = 4
  end

  (1..5).each do
    if board[i][j] == 'O'
      o = o + 1
    elsif board[i][j] == 'X'
      x = x + 1
    else
      break
    end

    i = i + 1

    if time == 1
      j = j + 1
    else
      j = j - 1
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

# 正誤：

# 【Rubyの場合】
# 同上

# 【PHPの場合】

# 盤面は、前問と同様に board[行][列] で参照できる形で連想配列に格納します。
# 斜めで記号が揃うパターンは、0 から 4 までの i に対して board[i][i] が同じ記号か、board[i][4 - i] が同じ記号の 2 パターンです。
# board[i][i] が同じ記号なのは左上から右下まで一直線に揃うパターン、board[i][4 - i] が同じ記号なのは右上から左下まで一直線に揃うパターンです。
# この 2 パターンを調べれば良いです。

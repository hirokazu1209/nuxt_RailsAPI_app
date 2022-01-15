# https://paiza.jp/works/mondai/prob60/substring_upper_9

# nums = gets.split(' ')
# i = gets.to_s

# ((nums[0].to_i - 1)..(nums[1].to_i - 1)).each do { | i |
#     str = s.each_char.upcase
# end
# }

# 正誤：×

# 【Rubyの場合】
nums = gets.chomp.split(' ')
str = gets.chomp

# 1から文字列のサイズ分までをブロック変数iで処理する
(1..(str.size)).each do |i|
  # もし1つ目の入力数字がiよりも低い、且つ、2つ目の入力数字よりも低い場合
  if nums[0].to_i <= i && i <= nums[1].to_i
    # 対象の文字列を-1して大文字に変換する
    print str[i - 1].upcase
  else
    print str[i -1]
  end
end

print "\n"


# 【PHPの場合】
[$a, $b] = explode(' ', trim(fgets(STDIN)));
$s = trim(fgets(STDIN));

for ($i = 0; $i < mb_strlen($s); $i++) {
  $c = mb_substr($s, $i 1);
  if ($a - 1 <= $i && $i <= $b -1 && 'a' <= $c && $c <= 'z') {
    $c = chr(ord($c) -  32);
  }
  echo $c;
}

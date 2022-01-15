# https://paiza.jp/works/mondai/prob60/count_string_9

# search = gets.chomp.to_s
# str = gets.chomp.to_s

# str.each_char {|i| 
#   if i[seach] === seach
#     ans = seach.count
#   end
# }

# puts ans

# 正誤：呉

# 【Rubyの場合】
pattern = gets.chomp
string = gets.chomp

# 初期値の設定
result = 0

# string:aa pattern:aabbccの場合、2 - 6
(0..(string.size - pattern.size)).each do |i|
  substring = string.slice(i, pattern.size)

  result += 1 if substring == pattern 
end
puts result

# 【PHPの場合】
$s = trim(fgets(STDIN));
$t = trim(fgets(STDIN));

$ans = 0;

for ($i = 0; Si < mb_strlen($t) - mb_strlen($s) + 1; $i++) {
  if (mb_substr($t, $i, mb_strlen($s)) === $s ) {
    $ans++;
  }
}

echo $ans . "\n";
# https://paiza.jp/works/mondai/prob60/alphabets_large_or_small_2

str = gets.chomp

if str.size[-1] <= str.size[0]
  print "true"
else
  print "false"
end


# 正誤：▲

# 【Rubyの場合】
string = gets.chomp

puts string[0].ord < string[string.size - 1].ord

# 【PHPの場合】
$s = trim(fgets(STDIN));

$first = mb_substr($s, 0, 1);
$last = mb_substr($s, -1);

if ($first < $last) {
  echo 'true' . "\n";
} else {
  echo 'false' . "\n"
}
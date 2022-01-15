# https://paiza.jp/works/mondai/prob60/alphabets_large_or_small_9

string = []

3.times { string.push(gets.chomp) }

puts string[0].ord <= string[2].ord && string[2].ord <= string[1].ord

# 正誤：✖️

# 【Rubyの場合】

# 【PHPの場合】
$x = trim(fgets(STDIN));
$y = trim(fgets(STDIN));
$c = trim(fgets(STDIN));

if ( $x <= $c && $c <= $y ) {
  echo 'true' . "\n";
} else {
  echo 'false' . "\n";
}
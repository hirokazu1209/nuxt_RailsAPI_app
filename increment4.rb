# https://paiza.jp/works/mondai/prob60/5_or_more_3

【Rubyの場合】
n = gets.chomp.to_i

if n >= 5
  puts 'high'
else
  puts 'low'
end

【PHPの場合】
$n = trim(fgets(STDIN));

if ($n >= 5) {
  echo 'high' . "\n";
} else {
  echo 'low' . "\n";
}
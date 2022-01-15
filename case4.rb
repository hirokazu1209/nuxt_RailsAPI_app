# Rubyの場合
a, b = gets.split.map(&:to_i)

ans = b - a
puts ans

# PHPの場合
[$a, $b] = explode('', trim(fgets(STDIN)));

echo $b -$a . "\n";
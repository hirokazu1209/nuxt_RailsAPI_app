# https://paiza.jp/works/mondai/prob60/substring_1

a, b = gets.chomp
ans = a.to_i + b.to_i

puts ans

【Rubyの場合】
nums = gets.split(' ')
puts nums[0].to_i + nums[1].to_i

【PHPの場合】
[$a, $b] = explode(' ', trim(fgets(STDIN)));
echo $a + $b . "\n";
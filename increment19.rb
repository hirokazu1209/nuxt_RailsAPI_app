# https://paiza.jp/works/mondai/prob60/substring_upper_1

nums = gets.chomp.split(' ')

ans = nums[0].to_i + nums[1].to_i

puts ans

正誤：◎

【Rubyの場合】
nums = gets.split(' ')
puts nums[0].to_i + nums[1].to_i

【PHPの場合】
[$a, $b] = explode(' ', trim(fgets(STDIN)));
echo $a + $b . "\n";
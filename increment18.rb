# https://paiza.jp/works/mondai/prob60/substring_upper_0

nums = gets.chomp.split(' ')
puts nums[0].to_s
puts nums[1].to_s

正誤：◎

【Rubyの場合】
str = gets.chomp
puts str.split(' ')

【PHPの場合】
[$a, $b] = explode(' ', trim(fgets(STDIN)));
echo $a . "\n" . $b . "\n";
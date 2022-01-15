# https://paiza.jp/works/mondai/prob60/substring_9

# nums = gets.chomp.split(' ')
# s = gets.to_i

# (nums[0]..nums[1]).each do { |i| 
#   puts i(s)
# }
# end

# 正誤：×

【Rubyの場合】
nums = gets.chomp.split(' ')
str = gets.chomp

((nums[0].to_i - 1)..(nums[1].to_i - 1)).each { |i| print str[i] }

print "\n"

【PHPの場合】
[$a, $b] = explode(' ', trim(fgets(STDIN)));
$s = trim(fgets(STDIN));

echo mb_substr($s, $a - 1, $b - $a + 1) . "\n"
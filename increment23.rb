# https://paiza.jp/works/mondai/prob60/substring_upper_5

nums = gets.split(' ')

(nums[0].to_i..nums[1].to_i).each { |i| puts i }

# 正誤：◎

# 【Rubyの場合】
同上

# 【PHPの場合】
[$a, $b] = explode(' ', trim(fgets(STDIN)));

for ($i = $a; $i <= $b; $i++) {
  echo $i . "\n";
}
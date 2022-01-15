# https://paiza.jp/works/mondai/prob60/substring_4

nums = gets.split(' ')
(nums[0].to_i..nums[1].to_i).each do |ans|
  puts ans
end

【Rubyの場合】
nums = gets.chomp.split(' ')
(nums[0]..nums[1]).each { |i| puts i }

【PHPの場合】
[$a, $b] = explode(' ', trim(fgets(STDIN)));

for ($i = $a, $i <= $b; $i++ ) {
  echo $i . "\n";
}


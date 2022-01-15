# https://paiza.jp/works/mondai/prob60/sort_asc_1

# string = gets.chomp.split(',')

# string.each { |str| puts str[-1] }

# 正誤：✖️

# 【Rubyの場合】
num = gets.chomp.to_i

num.times {puts gets.chomp.split(' ')[1]}

# 【PHPの場合】
$n = trim(fgets(STDIN));

for ($i = 0; $i < $n; $i++) {
  [$s, $d] = explode(' ', trim(fgets(STDIN)));
  echo $d . "\n";
}
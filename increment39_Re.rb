# https://paiza.jp/works/mondai/prob60/sort_asc_9

num = gets.chomp.to_i
array = {}

(1..num).each do
  line = gets.chomp.split(' ')
  array[line[1].to_i] = line[0]
end

array = array.sort

array.each { |ele| puts ele[1] }

# 正誤：✖️

# 【Rubyの場合】
# 同上
# 【PHPの場合】
$n = trim(fgets(STDIN));
$ds = [];

for ($i = 0; $i < $n; $i++) {
  [$s, $d] = explode(' ', trim(fgets(STDIN)));
  $ds[$d] = $s;
}

ksort($ds);

foreach ($ds as $val) {
  echo $val . "\n";
}

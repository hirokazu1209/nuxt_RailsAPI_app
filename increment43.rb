# https://paiza.jp/works/mondai/prob60/sort_add_3

array = %w[1 3 5 6 3 2 5 23 2]

array.each do |element|
  asc = element.sort!
end

puts asc

# 正誤：✖️

# 【Rubyの場合】
puts [1, 3, 5, 6, 3, 2, 5, 23, 2].sort

# 【PHPの場合】
$array = [1, 3, 5, 6, 3, 2, 5, 23, 2]

sort($array);

foreach($array as $v) {
  echo $v . "\n";
}
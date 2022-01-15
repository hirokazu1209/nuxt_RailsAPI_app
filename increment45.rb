# https://paiza.jp/works/mondai/prob60/sort_add_5

num = gets.chomp.to_i

(1..num).each do 
  line = gets.chomp.split(' ')
  puts line.sort!
end


# 正誤：✖️

# 【Rubyの場合】
gets.chomp
array = gets.split(' ')

(0..array.size - 1).each { |i| array[i] = array[i].to_i}

puts array.sort
# 【PHPの場合】
trim(fgets(STDIN));
$a = explode(' ', trim(fgets(STDIN)));

sort($a);

foreach ($a as $val) {
  echo $val . "\n";
}

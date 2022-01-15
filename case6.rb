Rubyの場合
n = gets.to_i
a = gets.split.map(&:to_i)
x = gets.to_i

pos_of_x = -1
n.times do |i|
  if a[i] == x
    pos_of_x = i + 1
    break
  end
end

puts pos_of_x


PHPの場合
$n = trim(fgets(STDIN));
$a = explode(' ', trim(fgets(STDIN)));
$x = trim(fgets(STDIN));

foreach ($a as $i => $a_i) {
  if ($a_i === $x) {
    echo $pos + 1 . "\n";
  }
}
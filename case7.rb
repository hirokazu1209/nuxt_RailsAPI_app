https://paiza.jp/works/mondai/steinsgate/restore_command_step3
# A = gets_to_i
# X = gets_to_i
# m, n = gets.split.map(&:to_i)

Rubyの場合

m, n = gets.split.map(&:to_i)
a = m.times.map { gets.split.map(&:to_i) }
x = gets.split.map(&:to_i)

pos_of_x = -1
m.times do |i|
  is_x = true
  n.times do |j|
    if a[i][j] != x[j]
      is_x = false
      break
    end
  end

  if is_x
    pos_of_x = i + 1
    break
  end
end

puts pos_of_x





PHPの場合
[$m, $n] = explode(' ', trim(fgets(STDIN)));

$a = [];
for ($i = 0; $i < $m; $i++ ) {
  $a[] = explode(' ', trim(fgets(STDIN)));
}

$x = explode(' ', trim(fgets(STDIN)));
  if ($x === $a_i) {
    echo $i + 1 . "\n";
  }
}
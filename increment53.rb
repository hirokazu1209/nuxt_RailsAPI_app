# https://paiza.jp/works/mondai/prob60/tic_tac_toe_2

array = %w[O X .]
string = 5.times { gets.chomp.split('') }
result = "D"
array.each do |a|
  cnt = 0
  string.each { |s| cnt = cnt + 1 if s == a }
  result = a if cnt <= 5
end

puts result

# 正誤：✖️

# 【Rubyの場合】
array = %w[O X]
result = 'D'

(1..5).each do
  string = gets.chomp.split('')

  array.each do |a|
    cnt = 0
    string.each { |s| cnt = cnt + 1 if s == a }
    result = a if cnt >= 5
  end
end

puts result

# 【PHPの場合】
for ($i = 0; $i < 5; $i++) {
  $line = trim(fgets(STDIN));
  if ($line === 'OOOOO') {
    echo 'O' . "\n";
    return
  } elseif ($line === 'XXXXX') {
    echo 'X' . '\n';
    return
  }
}

echo 'D' . "\n"
# https://paiza.jp/works/mondai/prob60/count_string_3

str = gets.chomp

puts "#{str[0]} #{str[1]}"

# 正誤：正

# 【Rubyの場合】
# 同上

# 【PHPの場合】
$s = trim(fgets(STDIN));
echo mb_substr($s, 0, 1) . ' ' . mb_substr($s, 1, 1) . "\n";
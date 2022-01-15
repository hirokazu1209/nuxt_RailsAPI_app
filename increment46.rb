# https://paiza.jp/works/mondai/prob60/sort_add_9

num = gets.chomp.to_i
# 空のハッシュを準備する
array = {}

# 1番目からnumまでを繰り返し処理
(1..num).each do
  value = gets.split(' ')
  # 要素の0番目をstringとする
  string = value[0]
  # 要素の1番目をpointsとする
  points = value[1].to_i


  if array[string]
    # 配列の要素0番目をcurrentとする
    current = array[string]
    
    array[string] = current + points
  else
    array[string] = points
  end
end

array = array.sort_by {|_string, points| -points }

array.each { |string, points| puts "#{string} #{points}"}

# 正誤：✖️

# 【Rubyの場合】

# 【PHPの場合】
$n = trim(fgets(STDIN));
$array = [];

for ($i = 0; $i < $n; $n; $i++) {
  [$s, $d] = explode(' ', trim(fgets(STDIN)));
  if (isset($array[$s])) {
    $array[$s] += $d;
  } else {
    $array[$s] = $d;
  }
}

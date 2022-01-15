# https://paiza.jp/works/mondai/prob60/sort_add_1

# array = ["HND", "NRT", "KIX", "NGO"]

# if array
#   print('true')
# else
#   print('false')
# end

# 正誤：✖️

# 【Rubyの場合】
array = %w[HND NRT KIX NGO NGO]

is_duplicate = false
# 配列の1つ目を取得
array.size.times do |i|
  # 配列の2つ目を取得
  array.size.times do |j|
    # 配列の要素数が違う、且つ、重複しているものがあればtrueを返す
    is_duplicate = true if i != j and array[i] == array[j]
  end
end

# 【PHPの場合】
$array = ['HND', 'NRT', 'KIX', 'NGO', 'NGO'];

foreach ($array as $i => $a) {
  foreach ($array as $j => $b) {
    if ($i != $j && $a === $b) {
      echo 'true' . "\n";
      return;
    }
  }
}

echo 'false' . "\n";
# https://paiza.jp/works/mondai/prob60/sort_add_2

array = %w[HND NRT KIX NGO NGO NGO NGO NGO]
count = {}

array.each do |element|
  if count[element]
    count[element] = count[element] + 1
  else
    count[element] = 1
  end
end

count.each { |_key, value| puts value if value != 1 }


# 正誤：✖️

# 【Rubyの場合】
# 同上
# 【PHPの場合】

$array = ['HND', 'NRT', 'KIX', 'NGO', 'NGO', 'NGO', 'NGO', 'NGO'];

$count = [];
foreach ($array as $v) {
  if (isset($count[$v])) {
    $count[$v]++;
  } else {
    $count[$v] = 1;
  }
}
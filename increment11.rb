# https://paiza.jp/works/mondai/prob60/total_value_9

n = gets.to_i
nums = gets.split(' ')

n.times do { sum = nums[0].to_i + nums[1].to_i }

puts sum

正誤：×

【Rubyの場合】
count = gets.chomp.to_i
sum = 0

(1..count).each do |i|
  line = gets.chomp.split(' ')
  if line[0].to_i == line[1].to_i
    sum = += line[0].to_i * line[1].to_i
  else
    sum += line[0].to_i + line[1].to_i
  end
end

puts sum
t = gets.chomp
text = "#{"+"}#{t}#{"+"}"

num = t.length

plus1 = " #{"+" * (num + 2)}"
plus2 = " #{"+" * (num + 2)}"

ans = <<"EOS"
#{plus1.strip}
#{text}
#{plus2.strip}
EOS

puts ans
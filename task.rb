list = []

loop do

puts "input your name"
name = gets.chomp
puts "input your phone number"
number = gets.chomp
puts "input your gender"
gender = gets.chomp
if gender == "female"
    gender = "female"
else
    gender = "male"
end

list << {name: name, number: number, gender: gender}

list.each do |i|
    puts "#{i[:name]} #{i[:number]} #{i[:gender]}"
end

puts "더 입력하려면 엔터후 입력하시고, 아니라면 0을 입력해주세요"
cmd = gets.chomp
break if cmd == "0"
end
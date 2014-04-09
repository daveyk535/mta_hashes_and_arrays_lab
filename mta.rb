
mta = {
  "n" => ['ts', '34th', '28th-n', '23rd-n', 'us'],
  "l" => ['8th', '6th', 'us', '3rd', '1st'],
  "s" => ['gc', '33rd', '28th-s', '23rd-s', 'us']
}

total_stops = 0

#Get boarding information
puts "What train do you want to get on: n, l, s?"
  train_1 = gets.chomp
puts "Which stop: #{mta[train_1]}"
  stop_1 = gets.chomp

#get unboarding information
puts "What train do you want to get off: n, l, s?"
  train_2 = gets.chomp
puts "Which stop: #{mta[train_2]}"
  stop_2 = gets.chomp

#same train:
if train_1 == train_2
total_stops = (mta[train_1].index(stop_1) - mta[train_2].index(stop_2)).abs
puts "Your trip length is #{total_stops}"

#different train
elsif train_1 != train_2
total_stops = (mta[train_1].index(stop_1) - mta[train_1].index("us")).abs + (mta[train_2].index(stop_2) - mta[train_2].index("us")).abs
puts "Your trip length is #{total_stops} stops"
end

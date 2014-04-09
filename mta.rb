require 'pry'
# The hash table of lines that you must fill in
# Each key in the hash is a line name and the value is an array of stops.

=begin pseuo-code:
Ask which stop to get on (n, l, s)
  train_1
Ask which stop:
  stop_1

Ask which train to get off on (n, l, s)
  train_2
Ask which stop:
  stop_2

If train1 == train2
  total_stops = (Distance between stop_1 and stop_2).abs
    **try and use index

If train_1 != train_2
  total_stops = (Distance between train_1/stop_1 and train_1/Union station) + (Distance between train_2/Union station and train_2/stop_2)
    **try and use & and .first


Your total trip lenght is #{total_stops}
=end


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

#Confirm the user's input
puts "Your are boarding at #{train_1}, #{stop_1} and exiting at #{train_2}, #{stop_2}"

#same train:
if train_1 == train_2
total_stops = (mta[train_1].index(stop_1) - mta[train_2].index(stop_2)).abs
puts "Your trip length is #{total_stops}"
end

#This is as far I've gotten...I'll finish it on the weekend...


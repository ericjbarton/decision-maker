p "What are the options?"
puts "option:"
options_array = []
option = gets.chomp
options_array << option
if option == "DONE"
  puts "you should do"
  p options_array.sample
end

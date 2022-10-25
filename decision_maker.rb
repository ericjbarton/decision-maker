p "What are the options?"
puts "option 1:"
options_array = []
option = gets.chomp
if option = "DONE"
  puts "you should do"
  p options_array.sample
else
  puts "option 1:"
  options_array << option
  puts "options 2"
  options_array << option
  puts "options 3"
  options_array << option
end

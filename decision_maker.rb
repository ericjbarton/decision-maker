p "What are the options? Type STOP to stop"
options = []
option = ""
while option != "STOP"
  option = gets.chomp
  options << option
end
if option == "STOP"
  options.pop
  p options.sample
end

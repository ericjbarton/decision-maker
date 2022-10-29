p "What are the options?"
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

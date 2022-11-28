require TTY
box = TTY::Box.frame "DECISION MAKER", padding: 3, align: :center
p box
p "Enter an option and press Enter. Type STOP when done."
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

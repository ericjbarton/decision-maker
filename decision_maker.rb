require "tty-box"

box = TTY::Box.frame "DECISION MAKER", align: :center
print box
p "Enter an option and press Enter. Type STOP when done."
options = []
option = ""
while option != "STOP"
  option = gets.chomp
  options << option
end
if option == "STOP"
  options.pop
  box2 = TTY::Box.frame "This machine says #{options.sample}"
  print box2
end

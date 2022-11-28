require "tty-box"

box = TTY::Box.frame(align: :center, enable_color: true,
                     style: {
                       fg: :bright_yellow,
                       bg: :bright_blue,

                     }) do "DECISION MAKER" end
print box
box3 = TTY::Box.frame(padding: 3, align: :center, enable_color: true, title: {
                        top_left: "DECISION MAKER",
                      },
                      style: {
                        fg: :bright_yellow,
                        bg: :bright_blue,

                      }) do "Enter an option and press Enter. Type STOP when done." end
print box3
options = []
option = ""
while option != "STOP"
  option = gets.chomp
  options << option
end
if option == "STOP"
  options.pop
  box2 = TTY::Box.frame "#{options.sample}", align: :center, title: { top_left: "THIS MACHINE CHOOSES" }
  print box2
end
